import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: const Text('Financial voucher'),
      ),
      body: SingleChildScrollView(
        child: Row(
          children: [
            Container(
              margin: const EdgeInsets.only(bottom: 10),
              decoration: BoxDecoration(border: Border.all(width: 3)),
              child:
                  Column(mainAxisAlignment: MainAxisAlignment.start, children: [
                Container(
                  margin: const EdgeInsets.only(bottom: 10),
                  decoration: BoxDecoration(border: Border.all(width: 3)),
                  child: Container(
                    child: Column(
                      children: [
                        Row(
                          children: const [
                            Image(
                              image: NetworkImage(
                                  'data:image/png;base64,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'),
                              height: 80,
                            ),
                            Text(
                              'The Islamia Uuniversity of Bahawalpur ',
                            ),
                            // ignore: prefer_const_constructors
                          ],
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Image(
                              image: NetworkImage(
                                  'data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAOEAAADhCAMAAAAJbSJIAAAAYFBMVEUAqZf///8AppOEzMEAoo68492v3dYws6OX08tGuKrk9PLv+vkVrJsApZFiwLTM5+OP0ch4x73U7end8e5wxrrE5uHt9/b2+/tZvbBBtaaV0ciIzMKs3NV/yr8AnIei2NBvrWXPAAACkUlEQVR4nO3a7XKiMBhAYRLTqlvjJxW6anv/d9lOZyUvEhLcQcDMeX5igpxhEBCyDAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAADwn7Rz7yAdF1lbvykt276eXZ1av1AMmoml5SwiL1fGNta6OlXfuHxMVI19VxXTZZBbql9VB++72101dx8uBtiL9qVLoRjklnYrVKrY1VecXuHPfqytOcXCemKShWorUtIsVOkXilPRcxb+uXUs6oV7t/LnLDQNNivFLKVsNe85C31bqk0uClfV8nQKs8xs3IiPamlKhfqvG+EuQZMqPCW/Dxe+eSkVmn014PjsZwvvlpq1G3Ce2hlfr6TsnkJtfxk7/3Kfq7kbMIlCs1VtYoXmsvm1r13UnN0JfxKFgcBYobn4Ju0ndvcUCowU+gNfrPzK8QuDgeFCf+DisxYyemE4MFjoD1Tq8CF34tiFkcBQYVvgj5k4EEcujAUGCgOBSm2ncvcU3MpwYWRqWcWMWqhje7C9MDbVXbaNuw/Lpc88+p+39kzNv95kYn6tGfk49D5fMZ2u2jzzxP2h2lyPxLF/S2OD3NL4vUVmzqq5+qQKs0wUXi++0yo0Bzdm+W9QWoXW3QMnWmiSL7TiLjHJ41DL/4QTPFtoK2K858PtZ/NxgNBL/8OeWxiTLeXZUO081zTFW0ix7iPxUc+eGg+fCt+Vd1gvgYM9PxQPELsWrq1vWyZbePD+IzxA4FCFhVhbt8K+AgcqLOb+5/gDBA5TuM/kb0aXwv4Chyg85q3vRA0Q+PD32o6v5e2JO17YZ+BD30285KU2zVcs3buJLcp+r+VGfb/0nlkAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAgHt8A34DLAwTR/yCAAAAAElFTkSuQmCC'),
                              height: 80,
                            ),
                            // ignore: avoid_unnecessary_containers
                            Text(
                              'Account No.',
                              style: TextStyle(fontSize: 19),
                            ),
                            Text('186101460157-92598579'),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(bottom: 10),
                  decoration: BoxDecoration(border: Border.all(width: 3)),
                  child: Column(
                    children: const [
                      Text(
                          'please do not use funds transfer method for fee pay',
                          style: TextStyle(
                            fontSize: 16,
                          )),
                    ],
                  ),
                ),
                Container(
                  width: 600,
                  margin: const EdgeInsets.only(bottom: 10),
                  decoration: BoxDecoration(border: Border.all(width: 1)),
                ),
                Container(
                  margin: const EdgeInsets.only(bottom: 10),
                  decoration: BoxDecoration(border: Border.all(width: 1)),
                  child: Column(
                    children: const [
                      Image(
                        image: NetworkImage(
                            'data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAASwAAACoCAMAAABt9SM9AAAAbFBMVEUAAAD///8BAQH+/v79/f36+vr39/empqbT09OpqakaGhrNzc3FxcUkJCTf398gICCPj49oaGjv7+9JSUmCgoKysrLm5uZ3d3deXl42NjZAQEAVFRUPDw+8vLw7OztwcHBfX1+cnJxQUFAsLCxd6xblAAADn0lEQVR4nO3dbVPiMBDA8d2mBZSCDyg+HCqe3/87Xqh3M3cz5aC0TZPN3xeOgJbwm91lkxQrlS5XL2t1t/JQ6vr1x1KvRIqikN3b9l1kU6kuvmRzr4cv91mIzO830nzdVbciu0ddrw63nmZabWShbi4f6h+QR9X6xh/K/3hbbje7ur5+9YeZPfk7lqpvhwdkrrp9vfY35/5ZZffph9Ac+zACf4Rtc+g7f+ifUh9GcHW4Ueri/WupzpV+1Opvrl++/0jkyv/O4lrkY+af6dkfoS6a++VTS6f1qjmY+iHcLLXeNaMu9c8L8gP1L9ePvZiXOntoRqfLL5G9v7t6FumA5fpjbQfDWh3DcgNgydzFj1VEglXkgjVMGmpfrB41y42D5XpjPYyFFSay3s/DOlrgu6Vhwli787HC1azVb6w9WGBFgDVAU/o31m4YLP+9G1ZFZA2MVYIVHVYZbrqjFzWlF6Th8witQ3kUy7VMpI/ULCNYJwu8IayyH5ZrsOQk1n+nOzFgXdA6XIh1OrIsYAlYRNb4SzRggUUaghU9FmloC2vUDQvXpYNvWVbeh8Jq22QdAKvThoULuLsDFlhggQXWEFguT6yuZ9EExdpHhkVkgQXW5FiT1CxHzbIfWfRZYMVUswJh2ahZmUYWWGCBBZZ9rEyb0iDTnVx3d0qTkdW2b1gExgr5QSewWrGKZNKwqVnuX6yjp3b3rVk2IivCzxuCNeW7IVhhsdo6+JM1K3os0hAs0tAqls3IIg3BSmrV4Xu607FmMd2xFFlggUXNmhzL7uIfWPGlYWis3Kc7NvcNSUOw0msdtOPuTpJYNKV08GBNnoZMd4gssMCKFSvgOaXUrKw6eLCm7+BtrjqARRqCNTkWJ+DGElnWmlKwwEqwZjHdyTiywLoAK5fLXw1Ss05cHaW46BoWZ/ZZYPXFGunyV2Blj0UagkUagtUPq/vVfsdIw55X+80rsnpewBYssNLGomYRWWCBlRJW331DahaRBRZpSGSBBVZWWEx37EbWiP8g0R4WkZUMVmI1izQMEVkVWB0jq0wK61gaJlKzcsEiDcGKGCuXJRoiCyzeDW1gjT7dOetDA0x3WrBYogmJZbxmWcIavc+iZmUaWbQO0WKxRAMWaQhW5K1DJEs0RBZYYNnASmxHmshKJrLAAos+a3KsxCLL+HqWpTRk1cEuFmkIlsWalct0hxNDumKldU4ppxzlg0XNIrLAAislLJZobETWL2Beigdb3czxAAAAAElFTkSuQmCC'),
                        height: 90,
                      )
                    ],
                  ),
                ),
                Container(
                  width: 600,
                  margin: const EdgeInsets.only(bottom: 10),
                  decoration: BoxDecoration(border: Border.all(width: 1)),
                ),
                Container(
                  margin: const EdgeInsets.only(bottom: 10),
                  decoration: BoxDecoration(border: Border.all(width: 1)),
                  width: 400,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text(
                        'Chalan No:',
                        style: TextStyle(fontSize: 20),
                      ),
                      Text('123456789'),
                      Text(
                        'Due date:',
                        style: TextStyle(fontSize: 20),
                      ),
                      Text('15.12.2022'),
                    ],
                  ),
                ),
                Container(
                  width: 600,
                  margin: const EdgeInsets.only(bottom: 10),
                  decoration: BoxDecoration(border: Border.all(width: 1)),
                ),
                Container(
                  margin: const EdgeInsets.all(20),
                  child: Table(
                    defaultColumnWidth: const FixedColumnWidth(230.0),
                    border: TableBorder.all(
                        color: Colors.black,
                        style: BorderStyle.solid,
                        width: 2),
                    children: [
                      TableRow(children: [
                        Column(children: const [
                          Text(
                            'Name',
                            style: TextStyle(fontSize: 18),
                          )
                        ]),
                        Column(children: const [Text('Mazhar Abbas')]),
                      ]),
                      TableRow(children: [
                        Column(children: const [
                          Text(
                            'CNIC/others',
                            style: TextStyle(fontSize: 18),
                          )
                        ]),
                        Column(children: const [
                          Text(
                            '3210404100695',
                          )
                        ]),
                      ]),
                      TableRow(children: [
                        Column(children: const [
                          Text(
                            'App#',
                            style: TextStyle(fontSize: 18),
                          )
                        ]),
                        Column(children: const [Text('987654')]),
                      ]),
                      TableRow(children: [
                        Column(children: const [Text('Reg')]),
                        Column(children: const [Text('S22BSEEN1M03003')]),
                      ]),
                      TableRow(children: [
                        Column(children: const [Text('Programme')]),
                        Column(
                            children: const [Text('ADP Software Engineering')]),
                      ]),
                      TableRow(children: [
                        Column(children: const [Text('App Title')]),
                        Column(children: const [Text('semester chalan')]),
                      ]),
                      TableRow(children: [
                        Column(children: const [Text('Fee Session')]),
                        Column(children: const [Text('Fall-2022')]),
                      ]),
                    ],
                  ),
                ),
                Container(
                  width: 600,
                  margin: const EdgeInsets.only(bottom: 10),
                  decoration: BoxDecoration(border: Border.all(width: 1)),
                ),
                Container(
                  margin: const EdgeInsets.only(bottom: 10),
                  decoration: BoxDecoration(border: Border.all(width: 1)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text(
                        'Particular',
                        style: TextStyle(fontSize: 18),
                      ),
                      Text('Amount Rs.'),
                    ],
                  ),
                ),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text(
                        'Amount',
                        style: TextStyle(fontSize: 18),
                      ),
                      Text('19000')
                    ],
                  ),
                )
              ]),
            ),
            Container(
              margin: const EdgeInsets.only(bottom: 10),
              decoration: BoxDecoration(border: Border.all(width: 3)),
              child: Row(
                children: [
                  Container(
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            margin: const EdgeInsets.only(bottom: 10),
                            decoration:
                                BoxDecoration(border: Border.all(width: 3)),
                            child: Container(
                              child: Column(
                                children: [
                                  Row(
                                    children: const [
                                      Image(
                                        image: NetworkImage(
                                            'data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAOAAAADhCAMAAADmr0l2AAABv1BMVEX+/v4UDkri4eUTDk////wAADIAADgAADbSpk8SEEkAADAUD00AAEESEUQSC04PD0sIADfJyNHUqFXPqWDUp0ZbSkYABUjQqlXCnGUJADtRRUMPBUWEa1mbfl4SEEYAAD+EgpbVpVejh2je3uqMclYAACxDQmYAAC0AAEoAACjUpUsAAEz+//cAAB/QplQAACMAAFHUqmTKpmnQqEgAAAAREkC1kmjUok53ZVGpj2bTqkQQDViYgWfEq21JPDVCMzcjFS7MrWRuWUxIOkTNrlrSqjpXTEQeDjdmVU6ulGO4usV0dYYoKEZERFyOkJ5mZHk4N1ylp7bz8/yCZFgzIjdaQzbLrUs6KjBOTmpDMEHSqXN5ZEYtHx5YVXEjCy1RQlGVeGohHjU3M1ufhlhEKUi7nVsxHDsgEiSXin2jjW1rV0FfR01nXGa9pHOqinaolV4mJUB9dGiemrExJlSjhEKRb0aBZmcaAR8qICsiHFsmICO4qouhh4NOSjgRChuxi1o0GSLGonpjQjVZTTWTcz+Fdk1DKyNiQUEhAA9vWDS9lVA6Nj5uXoKPiIaEeWe2oZXOsIh8bHZQOB8dAC8xM0rF3UzxAAAgAElEQVR4nO2di3/aRrr3o07QXSMHCQkZkCoHFyFi2ZIWZJBtDCYxtOkt8WWNd3NZb9w6Dsnm9CT1u+mp691N95zuebfptn/wOyNfwMHp5m0uNv3wfD5twQiqr56Z5/k9o5nRuXNDG9rQhja0oQ1taEMb2tCGNrShDe1V7fz5S5fOnz/ts3gjdv78Ptj53je/KkO+u3Tp4FXkyFM+n9dtkcuuvf/B1Q8/unD0fvDtkALjXPzovRhlTRV4Vvj4/Ws9iAOLej7qaqg5nj937cK7xbyhMARB6AwBeWryk48uHvTFwe2Q+Lwx3bkL72qkBSHgCAjDEP2XYZiUEfvko3fwARHnaZ/rL7L907740VWSJwTkuqIIOUMzeA4wDMExQoonP/z0WvfIgbPzOKq8N8lDRhQ5gmFEPjafSF+vjlMWRD7kRIIrkLGPLwwcYHS2OCVcfJckLULXdY7TFWNkIV3ypLjpJsv1JYpnGCDqqE/yuU+QG6OmHLXXATCc5dCZXvg4TyE6EQBRIWPLMx1J9SsV36+srKheObsaMyBA3VFgeLb4UYQ4KH6MwuKF3+YtyHEAAKjERjOeStt2EJhmXDKDILBpWmql1yiF4AA6CBqxd9857dN+acOOuPDhuMVwqAFCfnIuu+epsomgGnfK9dVqeleK07QZyE67tP67vIIPE0Vj/AOEOAhNFPWji79nLUZndFDQbtRbEm3LtumrrfRNTVNEFDu/aI55vh3IMr1SKydiSijqqEcquY+i7nvpTFMi9137YELhigIHLXZ1pm3SpmmrXildnTQUQEQGlNiXVzKdmkqbtCqVpudJlCT1IhHLfXrmA+r5c/+Bsh7HiaGSS5RrdBDIFXUv/Q9WgQAe8KGGC4Ci5ROZdqUiB7Q6m12lpkKUHFPUHy6cceV28adcFDYKubu4bcb9ldmZ0XGtEHIooDKHgPgl9vB8fatWQdFH9TKrGiJE34t9cO20GV5oqHV9lC+guM+lcvVWI3ACs9apf8YaKFMgIGSHgPi1rqMkYeSrt2ZRXKWdWmaVEkWmyCjFC2evnR7Usu/8gWKwzNRGS65DyyuNViJmIBzixcYYxuT0Hcf3fcebuc0jbCaV+wA1U/SLZ6lkjFL7pzG+iOSJsZRxfduOS2NzOYVgOAhfzIdaM8ok+bvJeNRQr7O8yOmC9oeLWNmcIb5IaX3Ahihlp/LTs4Edd1Y2/khZoUigTA9eDIiTvA5CRdu+o6JM6XZGWQg5YOXfP2Oy7fz5a5/wKPWJZLUVp31VKldJlNtQBsfN8MWAOooruk5wohKrJ1WVDtzsDUUUBIb96Mx0xP3TuFi0OEFQqKxkI//tJQzIMRAhohKJEX+mDx52RZQbR9LtwPbV5KiG/A5jH58yV9eQtj53IZYSisDafID44rX1nBWdtoB0doj+/e8Bo/6orZUbjm176VwIioL222tnxImYbzKEOuRHsQCTyqvkfrfTBUgsAqb4c1G016CYb3bicuC05i1dCJVPrp0/E4H00rn3c4zIQSrt+g7tTecILLuwS0Txs8/zQPyZPnismQo6w9/ekmhaTVYNlG54RHjKgPsX+MK4LohMbsaUzXhnTuOYg7jCAf7u7GrhZQHRt5CWyU3XnED2EiQBCf69/XGd06OMKr+LeVHn4OSYGgTq2JdKT48DuRJ9C2W2lwXEFwWSc0k1iHt1lHQ48vcHQ3OnR3jp3LXiFNLRuTFU/dSyLAe7DhOVhCt3vuReMshEhvRb6rOyWgmkOgUYyH9wyoEGtdEPDSRVJsdM26zdJRm9V1LHNmhbmjZeuoni76Dvw/wDx5S9uzmkYfOfnqpiQw58lxd0jp0x7RV3mxdQbu8WRcKm59P+Hiv0Y3ColzKE1Y8OAZILIDajqrbX5MWizl44XUnz/rhYRPFTsk03QUL96ERxv+OzJk3L7rbVh1EMGQEw+XufpE7yIsNxE7dM5MO5FFO0vjjFcQwk0IqoFjeablCpbfMM6JHVAEKtU4m7tD9G9TMAJizcuP9P8sRmyohQz8+s2HZyHpWR2genp7qRwNYAsKqeHNTWDU4odj3IQMg3a5UAh/ylvnICopJxabaTOlnEMQwAcPyBJNtlFjAgf+H0OuEFnMZHSrIpZSlGx2Vtl0EfbyHxfNkM/Jn+NsqEO17jbv/fI8O3LkSw2HHi9DovgqlPToXtEo4wH07pgpJ17Uo5BnDt03OORHgbaRJkNl0ioXg8VQBdK8leqhtwQRH1S6TPu/EIKAuebHqrsMjxn55GN8S3vd7PA6awNov08apyXK8gJ2BAex+QgszxZA+0tBRsGN06A+hTN/9UFHquAyfGplWb3ooxDCxeu/T27yLigvsPlshpZafi1g2oHw/5OhMuHQHGwHP5QFyqXTbrShcbpqyHTSXF9XRKBrJlWpbqPMMY/3H+7ed79L+8wBIiHJVMeisHOOG4j3Q9XHIPAVnuOXw2Q9uNNfFotCb1RfWbO6XVtS+OZB3HCSC1WpPpVh4IKf3cKdQVl879nhcAVXZsb8HAyetYExWYcPUQMMlyxZ7PkBaYT9p0Y1M8iq7g6vc12pz9/CrsDryhiEzNxG2pbjEM9f4pCLZL77BIGi+5tjzG9slpdHrhPyJAm44nKaiD7iFIwVzxZNpdRMXwoaVy/2nSj/LicdGT2kEJqMQCzvr9W8dD9qnGQCOrylLC6pfTDMFHHoxjD04aPQNPyNUGUnaOu6R38yNDlpN3tqgeKYRNZDOofVQtSIy//dHg8+feswQwkpTtVg72J2yGfLyBhBodj9O0lGla3SDLACLWCmjVWRDg0R+LVz//cufzRf14U2CUqmfTWYUjUKZ464DXxqGQWpNkZ5oHxy88Nj1fkh3ap03cTP0M31NjAI5NIkC6SXaDq/5/WBimeqVQ9FfItmi5FNPFwtsfgjr/PskA/rpqSz/1eOLQgEAhfROv+KbsO7Q805MRkEjJeX7gqBmqt2WfVBUDwsjSSOrh2HrtrUeZd5G4JsdUOknp8AQPGmnXxjfHVMfx2wnreIJL+nTc74yEfV973qxR15eaCsewF98237nfWgwYT9LqGM/0AyI1mc/SgbMxfceh1WWqd9iCAVRJtU2cAPovzHOXKVxs0/GsIhLa+28dEOkveFuy1XX+BA/qIofHK9Trk2O+LS2G4lF34wgBaBnVDkzkwn9X6wtgsuXYG7xIKO++dUCkQ+GqRKtIcTF9HUhn9ELCoe00NYYy3hKMhvG7De/6imkHtpolgSB0czt+JaBS6uhyIRVKIcBdg9OVD94230UEaI2atNO0OL0vD+qEbjVVBMhGgOA4IFyq2XY8sL2EAXsCFL6HGIKeIxGgtuHISUNkrPfeNuAFVItayEnOFQsVpc8DMoBR6keAO4DhjrVGqlyhnbgtt6sjUOjmCg41CqLYbQ86FHgMSIoI9TQAlStxWrpSAERfyX4ccBVdgmOAynbD9B1Hjnt3x3s9y5F//jjVvRYCFJQMAqREJtTePiCnWxhwVIH9SQz5FAPS+4BrkDjuQYYtSxVa9W2/NrPIW3jCE76tbbGJJzupHtUKRD5z4MGRtw4YQ90sgQFFyPRFQ50TretIqB0AhsTxQ3R9B5XJSMc5tuNlq3nSMDSNmr/bmp0eAd3LJRKAyqhyUjt7gOjaK9NHgFX43F1QHRj1dmDTDpJyMi11xtLT2cyWJ6tP2bAn6iBA8uwC8uv+IeCo0gfIsfW2LdOy6pgo2KyotC/LFen+CAw54QwC9lcTUBs/ApTmKOO5PsgQDJVom6bpr6CuKNvR8FQtnUNtW+gmndMFpICgRICp50dckHGbT5J39gHRySeTX1F9x3DazhiqGG3TDAJcF0sP/osKj7cF7uwCgvlahT4ElP1KuX8MmwPE+EKmrVZ8mlYbtXIzNhU+l27OMCBc9OQjQNuVW7n+QCsgvarFRqefIqvPswpkBB0eH9k5u4AgVgr8Iw/KdOake2gQT+easjRDsSwR3+kGnDAoTZTQVjsqSnTp3Jjt2Gr5Btdf0OI/HfyZI3Cc4rjnptScYUAGWF/vHgLGH+Wh+BKTZfovwRkG1EMycwR4twCLJ5z/IAMiMWZsHAGuW8UTmuhAA6LepEUexEEmnlX08P9nJsIAAOJxid1DQDrL/xK8sw3IAPLXDUj82gE5SP26AbselGk7y3P/bgR0AAGp5CEgEmo/N+t3QAE5FsntA7GdIX+NgONdwI1fF6DAQKTUxPzsUZDJkCIncD1D1tHZC2H/JLaBAMSz6UCRYNuHgPYuCRjAEcflGixC/d/otzMKyOlFJrSmqG4TLfNTuJw9voDC2t7sHxEfCECCExfXFubmakceTK7OVZcE7vhcIXKraQymB5Gn2D017ppHgLbruvdJCITumYviDa9EDqYHBahTd3xbrhwAOjR+s2H03CcVGaA0HW/zZ1Y1nWFAMSzm7gQmnn4QAaqOS9vmBil0AXWk5MZ8p37ifNgzD8iERbJTUePyIaB92VfjW0rPjWAdwB2PpndPmCo7AIACJ1jb24m73iEg7S1vN0enepqoAJV126Xdq5EL+wabzjggNoXnl9zDPmgnx5VCd/IrQwAxjJV9M1Cv8wwH+iTAIAASurjmykeAOeZorhpT1PFK3d+1adX2S19TUC8Wi/03+c88ICMuSPJhH0yOdwEJAFJsYqwm+6ovO7Mza7EpoAuD50Eu1QvI9gDCWKIl4X0RbNrxadkdq7JQHDhATrdGnaMomvxxfyqviGSqsjPmOjQdxOn9Gd123M1Oop9g9H7IMw1YGI13ARdBBCjokNruRPeTeqwilZZ4AE8o+s82YKLrQW9+v4VyoZGWaFlWjwE6duAtk7B/Rt8gAe5XSoDNqpdR13OOAZq073vLfRPXzz5gt4lKS4ATBY4bz8TRO5r2UdeTXMmTbGzySsMJvCsa+hk4OHd4GetKF7C2ChkgACpd8+MISNq9Q3+3vDp/45tSNCUYTyihZ6sKN1iAzeOAHDSW27SvIuG2fldSpXL5Qavmo0ziIFUeOLK9twNFAQzMHd5jgC4CZOAqKvFVP+78ZX0FudG3UcHhesmNR9myJPu+LJUnYRGCAQHkGKveBfQWkNpkS37FkWQz3lBNR/KSuxvrzep8zLAKk1nJplV8l00EgwJICNY03QOocVPr8cA34xXX9crp+uhtSjMMvmDxJC+AHSR6UM6vrTED00SPA7rVAlzq2HEn8Gfr86RlFaYsizdim2vN9MYMNXVXNaOEUSaPl/gDAyjNTeElHnjq3TIJLI2dX01MZ8p7Hgo29pgWK9kRoN1I8AMLuIrLX9XfY6FS303WapLj+6br+KZdJ5+agbwvTO+wcEAAOV3J+oeAgXQllglU215xPE2M7VWcuO37lUbzN55JS39t1uwDwEBqGmLPEoqBAXRGN7043iiBbmwr2i0VT01zvJmJtO/HTZNWW52DxaJqmQVcd2rfoADaTiKt0r5rOn6lnIPzbTwc5f5r4ssSbfoNL72U/+w/92WpX1tI9cxKP9OAfA9g/G4H32O661UCta7waSy2ndpsbcWXNkbZr/9aru0XUGqFzrLcQAASOp+hj+4uOX9rmKa5/HVSNivJXPiZh9QnLdtS8vrt2NrTpGmj+sLGu+T5dHJCHBBApRcQWZz2krinxdMWvx6XHcfenZuYaN734raJuiIqmaJZsdKC0v21Mw3Y68GorPWRAMUvvM2p8SRqkv6d9ad34gFK/iioOq1y7XJ0WFoTBw4wqvpMGg80YRdmeKuJb63FZdtc8X431kA/kp0Yr3pRIC2z3fHhsw041uvBgJYr6v5Ihd1YU3IlHxl60/i2MCEFcmuSC6k6/lSeXQwHAhAYZfto6N72HdkprW94SL3ItnNfKyw3AtqPo+q3zGZ8V35kMJBg79gOqpqqhUFI9BiQ7gKi4PEwz5M7HdtWTV+qwvxYHHVI31d9l1YbfnYq5FNKFtVMNl7sNRCA2pEHUdYz/eSkDoFRdWVVVf1bBtxsy4gPdU+v/Pe/OLXlnebHWhZ1UJNO84MB2NNEfQSYIfEUS3bLNzcydPIG4OuuTJtuZ/q/v8108BayT+a1DdqR4/YMORCAkCoF3SATxFvUFANCI1sx55qqekULx8dU2f3Lf08nXRWpVLq1o23WaDygv9Etmc7wwpDnAG26ts4u3tYNFFHqadtMG2FqYkyipZoqV4IgXnv65VR+I47zSNBS9EEAxOsKjgBVpK5r3yW/p3JIXv/Nk+N1o3iVjyXKs67kenul6T9Zyu1S3I6WwDwwhIEAZEv2ESB2TODf2cnVJTvuq+7WuPLXTiJnkONLCzeXJnMGr017tungIW/7ATkgHkzaRytfUPUX0FtFarRTkR2p1Ywpi57slhOaVpiyeJ5czdacwK4k/0cKbPtOdYEA+3dEDwFHziYgynJqOleWVdS3VCmb10Y92fcyVdIydh7QgflI2tt4ur6efbzXvl5DqUS6m6+hRupIW2y4v2VnBBi38RLXMwkY+JU0NUbHg0D26iR7vS1LW0uUwi9lZ9VATX5Tw1NpajO/uZ7g5+74dPtPuVl8wzAoDQogUpbZiTHbv6yWVtn5jGt7zRgfWy577qPvTPfp+F5gOnbtX1buJl/1/MaGMe/R/iABVlR79+F3siQ9JZVqx5Y7q5q1UHIr6vq2V4lnlXUftV46+e2Gl61J7XTOqroB7q/lswV4ZarYPyOL4VCQObj9VxqNTb03u+LeGpmKTXt+IKvZr2uXzYxhbLh4Ow/PS5bSoywVW2uhIgp9o8SC/YmWHIMAndOOoj8PaLvrO/9o3pysX1+jlHymUUEFBX1nQ7Xt2uoUuTY9k53eXmIpg5qvP2jQttMPeOpp4ucBfTXZduNeleSV2PKeKcvOimPjwRf7srfNxgyNisXYG9vprTYqpEwzGnzqAzy9Jjr6Ek0U1Qyq3X46vV6SfBprFcc3TRmHS6n0CGWJjVar7dK+bAeo5MefR4CgF/AN5sFo+1n80LLzvRYBxghdqUq+lJgS+qMMI8Y6+4PVyF0qvhfooGyIAGmc9wMTxRKUPOw45pTxiAYey8CfYFVQikEhGphB1YSR9W13UdShdng+x+2Vt1s7cYfd6JkuCBBW3RcBYg+qv8yccuxgBw+O4Pi0T7ubogC0kx8/9Rr2k+u7aPtOvEAhwKUXAUZSTf4FdujBLqAal5YOAU84j1eme9EnkQd/BpDaU81faCX2AFBEgNdVWlpLYcA3YufPv/PBuyfaxzwCnPciwBPm8ADj4dPsL7TH2sFWkFy07xcG1Dnh5NN496NX3Lby/MVJ/kRT8AnMe7J5BQH28XGAMMiTv9hnBrK+n96/Sgzkr6/Y7kIK/eILvvzJKwOyfWffxcglXwBIRI+Ueknjnju4O/Nyf+c2vB/Ni0x5700CArbzIkDkQ4g33X4JE7D1/qG7bywDlboauP2bBB9Z6s0Cxlov9GC0FfFLOpAgXuTBfcDbPZNLnuvurwx46WKsf7oxntvJIB+BWLkijWoIRWfEk1daAbHYv2cXXlbAQPHgAz02cuIaHwFyImM0Vbl2A0S0Aqrze3ZihaCILsCbAWQ4ThQ5RqTKPiqX8JKd/j1zDlCE1El73QMI8EP78JfA7e9vnrDGhxGBuKgDvqnatUX8CxzeYJzr3TAIiBrzhgA5TkCXk2HIMV9aSHE6A4WrJ3tQYP9X6/8BvBSNCQvR0h7l8XpT6f8iI4aTX+WhhQC9xaMdL3ire/tQB9Q9/U0BMvOb+LlQWsZHIQ4Bhvn/e3JfBeNffXmCB7UiI1qr/xwh8Cq0dkLpm+2LvFuoe3NW4QhQYBhqcTt9felwgQKjjG4ZbwZQ52IPv48RoW7MyNIODiew+iR/IiCcH/vqudk9qO8Yv78qEtTW7L0CZPKPp28aqME/N8kJEiNJv64gDwb7gCI3nm27K+reF2B/K0iOLW+8KUCweT9L6lBAgLXbCBAqy3vjfYdFrvrh1uhzjbeoT+18xXIErN4a0cWRH+6xVgh18BwgIBY9ecaIAKOnxoT5rSdPH+1WvE3ARBOIU1XvKf+GAJmJsSdkMQL05oHIcPzyXu5EwOIiqz230wrgl54lUkg/WwYqbBlWAzB2c7FvESJHleQy1QXkfro3ofF/aUxTQI/mCpEzavYNARKL935YgAIGRB0Er3owlrdO7oMo31vP7XFsVGdnciKOuyLe818UmfmtZ4vwuYf7oIuWsZOxAsqD3kjUB+EUKD58cJdHES0aFybLfvr1AnLRxqgo/il//IEVQhHq/Ew8OYIVC7+8FTt0EH7gJWB0SKDgw0FjfnR0UROjtIlCI2fF1ttjN/B7dBwUdNS+U01JQoDohw+iJRfpbKUery1O1Q89CPQiB6/GpooiyrropwjtTQBGKUInUgqCEBlG2TAfxESks6aWS9G+W5yOa3GWBagGH+EEEcayntTwrrMhlmBMwcrfLUnlcZRhRCK0igA/rQ4azZVWHj9n+fARVAwHEKAxKjWWECB9mCaIKL9EhvSdyG/E15XXCogfRAcLjB5pY13QRZFv2RvjqJUBBGhEgIwugD/u3R8BUzs/8CC80fJl+rIsZf6okRS7eDOdVN00CxCAYRmJewaKLRyWYxky1BcXDmap6XoYon4tznvqqIU9ON/XSwT8UOYN8/UDEtp7gshR4+Mc5IhUir1jZxX443yusLwXNVE9BVFEtb0bxNL3S6gWyNJOKb3n+r6X3N1N7rkV9/6fJzQLibzHM0+fLUGooebLrze2rdSft9J81HAJThwhCZ0QF1Ge4KeRFt3py6ShRQhGxpxWXqsWxWv9qt9TofF4r7QE9JG1hW01vl1Y2munY9vPJtFxSuKHEcZqNsr8Yqeucfp8W25NGLfTe5Lqq6rauJNeyz9uJ7ctY6FtutOGvlj2xkbIbC1W2EzKG7weiVIwPzNzAyVXate/a0yvBG7iuSdvAGX84VdUAQFar1ds65DtLCvgx1nb3qKU1Y6Ld4QzHpm0enO7swNDYqe9wTOFTG2UKpdiIkgtNOQ7qyRjTCzU09l6YjVvjFCowup8Nt35dnuNEvntxmV1+pvOtHWj1HBapKhbKAdprcAvjQCBL9NZKuva0rQCUddn8DLKosAxxvy059YVPhOvk6+1iRZDZf2BFip1M7CT367Xak/LW2tTI8nAjD+ek9KklS/V/mtKWaq1qER72SI4FD0CurG1aUGUK/ipKfLebetmOwjiZrtJKqg1U2UzcBq1WxT5dPabR+0RMH4rH8I/en8rN+pThJGxZ9isE80iRREKVSwiCAvafNpTAxSV+Axqwa8VMCz869mCpbMt2b5MN7z7a9o4RfDbboWm03OOl/6vslzW+J1SbZXfSOYAwWmjNcmW45155HsUF2JXPuetB7IvB7VsPgrHa3iyr5uJTW3WKiXHbX5dd9O5iWz86bibUYCWtTd+03Ic2ltKAVR/oH8sqprxVNl2EzwwMo2m9ToBLf5f3mNSFKyZmuN79ZgmMHi/vtt7bTU+uuT5qkP7uxN/TUpNK++VeF1kRGX0Vtu0G1WriOocpfr9Z5zW7Hi0N5pDwDonFrdqUjxLiXrxfnyFlqWSFPd2W5Ip3XUzpK48tM0WXqQeL92gDMVgJ3fws2996TtpK8cJ1Fj7tvg6AJG2xoUKu5bxWhMo08ORf/yPi6SoIAJQFEBR+/K75CS7d1mWvV31gdteJ+G8i/oiE6KkYazHzdoOAKKVqz5ZRtekMP9N7SmJE52gEzB1Y2N2Ca9RLibWs6ocqI88ma7txlekKxTDT8cDdCn/1Zb9ZGZ6enqj5cUvV6TWt3+r/QQIfeSruZHXUy6J6Nd+bLZWKp3NFN5hkf9x17sxhYpP3O+FArs+i/rCwt6z8u/W4ytuegIyi26JZaKnCefLsjpjWeSPiY3ZOolENbu4W5vHwhriN9TfvYyGMwNQtFii03mcnxu7Xx1/vFVXpqyJUjwwG+tUQrVpR5VUlfZVb2ZuMlZuRaoipoHXA4g01hefl1v3Z6oKp4fKZD0p1WPkn26nRDG08qNJv0xBkRzPk4WE67fGRZSzXbcZs5QpfnJDqtQWU/fK7cbsNMXo/OJjbyUdaYKiUCDXNiQvosUPWoIKyyqhxqJeoI3MV6t3N+LImzMsJK8kXTxM7rit6U0DhuRMNrV/hULhdXlQ0GIsaynFopav77kr9/P3n5af3BCJ8cT9mpRcTeFnl0MwNSoFdQuJYa3j19J/Xx2dTqq+l1DgFzuJ9ZsWtBbTyUZjy4jGNyA5t+G63pVoahrSRYxeDMMiwwhMGI48nkWdM/C9znQMCLr1ZXNmLJOt7+R5iCQOeS+BhwCg9vXia/Fg1Ad1Doqo0ykfP2knN7b5f7R3d8cWlZ++73yXSYyIIn7qHNSNOTXYVrSUXqi7FdOUGiuy3EgbRR1CvqAIyr0nndL1BRLgbVK5xe+ftTL1edLQkIDBY2spktrEj2dEjFxqNFNKJjPNeSMkQqBDntI03gqjjeJ1Dslu/HjKxJN7r1eqcaIuXP1zPkfyulHdWM8TnDA5EeMtLpLADHf1DwsdL0E2H7JYY/uyXamYyWWtW8kWJ8YpPnfjx5saqhh0djJPGpuff7vX1ABgBK25lX529KQ7xcjl0ccEPHlHFqSF89PPmrnXEkV7HvjFYbkdhqjR/qnz7EeUmQguPBypFJVb29TteW2xM7sUMtRo2XOTpes3ep9ph64E4MulUvsmquiQ0wDQHrpJ758GEEUut9XO7CWO9idBn0KOeeFmV1B7+GyOD199ZPs4IMq1eME7QLXM9pqFeoeOVP3BkKGo/fOxJoYwNtrUYFFMkakvNIoHnNDd5gAnB21rb708H43J4RUSNx7mb46gIksIw8Wb+c2jybCoK4rMC3fxIAQOCiNWUXgdQ/c9TRTlNVQjcfipViIhCvvDoeik90djQ5ZHFZ0ApjQ9ZFBZyuGSEd6wK7YAAADfSURBVImBni22sZxcvD2CWyiqKlHsQlcKFWACEaJuJabEnidsMdGGvxw4YTyBiLYHFlFYg68eRc9dHIfcgeF6Hg++4sfnodpc5I4+iP4NDj45OhSvs8JbhhOHx4nR9/pNxJeOiYw44eMTbP/30YvCh68K+M5vYofGYjt8ETvR+g85duy/+eILP33x/2f8p1dtoufeOeP2aoAn36A/Y/ZqHnzVH3jDdumMn9/Qhja0oQ1taEMb2tCGNrShDW1oQxva0IY2tKENbWhDG9rQhja0oQ1taEMb2tCGNrShvYT9P3tn8AAUSCeWAAAAAElFTkSuQmCC'),
                                        height: 80,
                                      ),
                                      Text(
                                        'The Islamia Uuniversity of Bahawalpur ',
                                      ),
                                      // ignore: prefer_const_constructors
                                    ],
                                  ),
                                  Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: const [
                                      Image(
                                        image: NetworkImage(
                                            'data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAOEAAADhCAMAAAAJbSJIAAAAYFBMVEUAqZf///8AppOEzMEAoo68492v3dYws6OX08tGuKrk9PLv+vkVrJsApZFiwLTM5+OP0ch4x73U7end8e5wxrrE5uHt9/b2+/tZvbBBtaaV0ciIzMKs3NV/yr8AnIei2NBvrWXPAAACkUlEQVR4nO3a7XKiMBhAYRLTqlvjJxW6anv/d9lOZyUvEhLcQcDMeX5igpxhEBCyDAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAADwn7Rz7yAdF1lbvykt276eXZ1av1AMmoml5SwiL1fGNta6OlXfuHxMVI19VxXTZZBbql9VB++72101dx8uBtiL9qVLoRjklnYrVKrY1VecXuHPfqytOcXCemKShWorUtIsVOkXilPRcxb+uXUs6oV7t/LnLDQNNivFLKVsNe85C31bqk0uClfV8nQKs8xs3IiPamlKhfqvG+EuQZMqPCW/Dxe+eSkVmn014PjsZwvvlpq1G3Ce2hlfr6TsnkJtfxk7/3Kfq7kbMIlCs1VtYoXmsvm1r13UnN0JfxKFgcBYobn4Ju0ndvcUCowU+gNfrPzK8QuDgeFCf+DisxYyemE4MFjoD1Tq8CF34tiFkcBQYVvgj5k4EEcujAUGCgOBSm2ncvcU3MpwYWRqWcWMWqhje7C9MDbVXbaNuw/Lpc88+p+39kzNv95kYn6tGfk49D5fMZ2u2jzzxP2h2lyPxLF/S2OD3NL4vUVmzqq5+qQKs0wUXi++0yo0Bzdm+W9QWoXW3QMnWmiSL7TiLjHJ41DL/4QTPFtoK2K858PtZ/NxgNBL/8OeWxiTLeXZUO081zTFW0ix7iPxUc+eGg+fCt+Vd1gvgYM9PxQPELsWrq1vWyZbePD+IzxA4FCFhVhbt8K+AgcqLOb+5/gDBA5TuM/kb0aXwv4Chyg85q3vRA0Q+PD32o6v5e2JO17YZ+BD30285KU2zVcs3buJLcp+r+VGfb/0nlkAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAgHt8A34DLAwTR/yCAAAAAElFTkSuQmCC'),
                                        height: 80,
                                      ),
                                      // ignore: avoid_unnecessary_containers
                                      Text(
                                        'Account No.',
                                        style: TextStyle(fontSize: 19),
                                      ),
                                      Text('186101460157-92598579'),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.only(bottom: 10),
                            decoration:
                                BoxDecoration(border: Border.all(width: 3)),
                            child: Column(
                              children: const [
                                Text(
                                    'please do not use funds transfer method for fee pay',
                                    style: TextStyle(
                                      fontSize: 16,
                                    )),
                              ],
                            ),
                          ),
                          Container(
                            width: 600,
                            margin: const EdgeInsets.only(bottom: 10),
                            decoration:
                                BoxDecoration(border: Border.all(width: 1)),
                          ),
                          Container(
                            margin: const EdgeInsets.only(bottom: 10),
                            decoration:
                                BoxDecoration(border: Border.all(width: 1)),
                            child: Column(
                              children: const [
                                Image(
                                  image: NetworkImage(
                                      'data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAASwAAACoCAMAAABt9SM9AAAAbFBMVEUAAAD///8BAQH+/v79/f36+vr39/empqbT09OpqakaGhrNzc3FxcUkJCTf398gICCPj49oaGjv7+9JSUmCgoKysrLm5uZ3d3deXl42NjZAQEAVFRUPDw+8vLw7OztwcHBfX1+cnJxQUFAsLCxd6xblAAADn0lEQVR4nO3dbVPiMBDA8d2mBZSCDyg+HCqe3/87Xqh3M3cz5aC0TZPN3xeOgJbwm91lkxQrlS5XL2t1t/JQ6vr1x1KvRIqikN3b9l1kU6kuvmRzr4cv91mIzO830nzdVbciu0ddrw63nmZabWShbi4f6h+QR9X6xh/K/3hbbje7ur5+9YeZPfk7lqpvhwdkrrp9vfY35/5ZZffph9Ac+zACf4Rtc+g7f+ifUh9GcHW4Ueri/WupzpV+1Opvrl++/0jkyv/O4lrkY+af6dkfoS6a++VTS6f1qjmY+iHcLLXeNaMu9c8L8gP1L9ePvZiXOntoRqfLL5G9v7t6FumA5fpjbQfDWh3DcgNgydzFj1VEglXkgjVMGmpfrB41y42D5XpjPYyFFSay3s/DOlrgu6Vhwli787HC1azVb6w9WGBFgDVAU/o31m4YLP+9G1ZFZA2MVYIVHVYZbrqjFzWlF6Th8witQ3kUy7VMpI/ULCNYJwu8IayyH5ZrsOQk1n+nOzFgXdA6XIh1OrIsYAlYRNb4SzRggUUaghU9FmloC2vUDQvXpYNvWVbeh8Jq22QdAKvThoULuLsDFlhggQXWEFguT6yuZ9EExdpHhkVkgQXW5FiT1CxHzbIfWfRZYMVUswJh2ahZmUYWWGCBBZZ9rEyb0iDTnVx3d0qTkdW2b1gExgr5QSewWrGKZNKwqVnuX6yjp3b3rVk2IivCzxuCNeW7IVhhsdo6+JM1K3os0hAs0tAqls3IIg3BSmrV4Xu607FmMd2xFFlggUXNmhzL7uIfWPGlYWis3Kc7NvcNSUOw0msdtOPuTpJYNKV08GBNnoZMd4gssMCKFSvgOaXUrKw6eLCm7+BtrjqARRqCNTkWJ+DGElnWmlKwwEqwZjHdyTiywLoAK5fLXw1Ss05cHaW46BoWZ/ZZYPXFGunyV2Blj0UagkUagtUPq/vVfsdIw55X+80rsnpewBYssNLGomYRWWCBlRJW331DahaRBRZpSGSBBVZWWEx37EbWiP8g0R4WkZUMVmI1izQMEVkVWB0jq0wK61gaJlKzcsEiDcGKGCuXJRoiCyzeDW1gjT7dOetDA0x3WrBYogmJZbxmWcIavc+iZmUaWbQO0WKxRAMWaQhW5K1DJEs0RBZYYNnASmxHmshKJrLAAos+a3KsxCLL+HqWpTRk1cEuFmkIlsWalct0hxNDumKldU4ppxzlg0XNIrLAAislLJZobETWL2Beigdb3czxAAAAAElFTkSuQmCC'),
                                  height: 90,
                                )
                              ],
                            ),
                          ),
                          Container(
                            width: 600,
                            margin: const EdgeInsets.only(bottom: 10),
                            decoration:
                                BoxDecoration(border: Border.all(width: 1)),
                          ),
                          Container(
                            margin: const EdgeInsets.only(bottom: 10),
                            decoration:
                                BoxDecoration(border: Border.all(width: 1)),
                            width: 400,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: const [
                                Text(
                                  'Chalan No:',
                                  style: TextStyle(fontSize: 20),
                                ),
                                Text('123456789'),
                                Text(
                                  'Due date:',
                                  style: TextStyle(fontSize: 20),
                                ),
                                Text('15.12.2022'),
                              ],
                            ),
                          ),
                          Container(
                            width: 600,
                            margin: const EdgeInsets.only(bottom: 10),
                            decoration:
                                BoxDecoration(border: Border.all(width: 1)),
                          ),
                          Container(
                            margin: const EdgeInsets.all(20),
                            child: Table(
                              defaultColumnWidth: const FixedColumnWidth(230.0),
                              border: TableBorder.all(
                                  color: Colors.black,
                                  style: BorderStyle.solid,
                                  width: 2),
                              children: [
                                TableRow(children: [
                                  Column(children: const [
                                    Text(
                                      'Name',
                                      style: TextStyle(fontSize: 18),
                                    )
                                  ]),
                                  Column(
                                      children: const [Text('Mazhar Abbas')]),
                                ]),
                                TableRow(children: [
                                  Column(children: const [
                                    Text(
                                      'CNIC/others',
                                      style: TextStyle(fontSize: 18),
                                    )
                                  ]),
                                  Column(children: const [
                                    Text(
                                      '3210404100695',
                                    )
                                  ]),
                                ]),
                                TableRow(children: [
                                  Column(children: const [
                                    Text(
                                      'App#',
                                      style: TextStyle(fontSize: 18),
                                    )
                                  ]),
                                  Column(children: const [Text('987654')]),
                                ]),
                                TableRow(children: [
                                  Column(children: const [Text('Reg')]),
                                  Column(children: const [
                                    Text('S22BSEEN1M03003')
                                  ]),
                                ]),
                                TableRow(children: [
                                  Column(children: const [Text('Programme')]),
                                  Column(children: const [
                                    Text('ADP Software Engineering')
                                  ]),
                                ]),
                                TableRow(children: [
                                  Column(children: const [Text('App Title')]),
                                  Column(children: const [
                                    Text('semester chalan')
                                  ]),
                                ]),
                                TableRow(children: [
                                  Column(children: const [Text('Fee Session')]),
                                  Column(children: const [Text('Fall-2022')]),
                                ]),
                              ],
                            ),
                          ),
                          Container(
                            width: 600,
                            margin: const EdgeInsets.only(bottom: 10),
                            decoration:
                                BoxDecoration(border: Border.all(width: 1)),
                          ),
                          Container(
                            margin: const EdgeInsets.only(bottom: 10),
                            decoration:
                                BoxDecoration(border: Border.all(width: 1)),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: const [
                                Text(
                                  'Particular',
                                  style: TextStyle(fontSize: 18),
                                ),
                                Text('Amount Rs.'),
                              ],
                            ),
                          ),
                          Container(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: const [
                                Text(
                                  'Amount',
                                  style: TextStyle(fontSize: 18),
                                ),
                                Text('19000')
                              ],
                            ),
                          )
                        ]),
                  ),
                ],
              ),
            ),
            /* Container(
              margin: const EdgeInsets.only(bottom: 10),
              decoration: BoxDecoration(border: Border.all(width: 3)),
              child: Row(
                children: [
                  Container(
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            margin: const EdgeInsets.only(bottom: 10),
                            decoration:
                                BoxDecoration(border: Border.all(width: 3)),
                            child: Container(
                              child: Column(
                                children: [
                                  Row(
                                    children: const [
                                      Image(
                                        image: NetworkImage(
                                            'data:image/png;base64,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'),
                                        height: 80,
                                      ),
                                      Text(
                                        'The Islamia Uuniversity of Bahawalpur ',
                                      ),
                                      // ignore: prefer_const_constructors
                                    ],
                                  ),
                                  Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: const [
                                      Image(
                                        image: NetworkImage(
                                            'data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAOEAAADhCAMAAAAJbSJIAAAAYFBMVEUAqZf///8AppOEzMEAoo68492v3dYws6OX08tGuKrk9PLv+vkVrJsApZFiwLTM5+OP0ch4x73U7end8e5wxrrE5uHt9/b2+/tZvbBBtaaV0ciIzMKs3NV/yr8AnIei2NBvrWXPAAACkUlEQVR4nO3a7XKiMBhAYRLTqlvjJxW6anv/d9lOZyUvEhLcQcDMeX5igpxhEBCyDAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAADwn7Rz7yAdF1lbvykt276eXZ1av1AMmoml5SwiL1fGNta6OlXfuHxMVI19VxXTZZBbql9VB++72101dx8uBtiL9qVLoRjklnYrVKrY1VecXuHPfqytOcXCemKShWorUtIsVOkXilPRcxb+uXUs6oV7t/LnLDQNNivFLKVsNe85C31bqk0uClfV8nQKs8xs3IiPamlKhfqvG+EuQZMqPCW/Dxe+eSkVmn014PjsZwvvlpq1G3Ce2hlfr6TsnkJtfxk7/3Kfq7kbMIlCs1VtYoXmsvm1r13UnN0JfxKFgcBYobn4Ju0ndvcUCowU+gNfrPzK8QuDgeFCf+DisxYyemE4MFjoD1Tq8CF34tiFkcBQYVvgj5k4EEcujAUGCgOBSm2ncvcU3MpwYWRqWcWMWqhje7C9MDbVXbaNuw/Lpc88+p+39kzNv95kYn6tGfk49D5fMZ2u2jzzxP2h2lyPxLF/S2OD3NL4vUVmzqq5+qQKs0wUXi++0yo0Bzdm+W9QWoXW3QMnWmiSL7TiLjHJ41DL/4QTPFtoK2K858PtZ/NxgNBL/8OeWxiTLeXZUO081zTFW0ix7iPxUc+eGg+fCt+Vd1gvgYM9PxQPELsWrq1vWyZbePD+IzxA4FCFhVhbt8K+AgcqLOb+5/gDBA5TuM/kb0aXwv4Chyg85q3vRA0Q+PD32o6v5e2JO17YZ+BD30285KU2zVcs3buJLcp+r+VGfb/0nlkAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAgHt8A34DLAwTR/yCAAAAAElFTkSuQmCC'),
                                        height: 80,
                                      ),
                                      // ignore: avoid_unnecessary_containers
                                      Text(
                                        'Account No.',
                                        style: TextStyle(fontSize: 19),
                                      ),
                                      Text('186101460157-92598579'),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.only(bottom: 10),
                            decoration:
                                BoxDecoration(border: Border.all(width: 3)),
                            child: Column(
                              children: const [
                                Text(
                                    'please do not use funds transfer method for fee pay',
                                    style: TextStyle(
                                      fontSize: 16,
                                    )),
                              ],
                            ),
                          ),
                          Container(
                            width: 600,
                            margin: const EdgeInsets.only(bottom: 10),
                            decoration:
                                BoxDecoration(border: Border.all(width: 1)),
                          ),
                          Container(
                            margin: const EdgeInsets.only(bottom: 10),
                            decoration:
                                BoxDecoration(border: Border.all(width: 1)),
                            child: Column(
                              children: const [
                                Image(
                                  image: NetworkImage(
                                      'data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAASwAAACoCAMAAABt9SM9AAAAbFBMVEUAAAD///8BAQH+/v79/f36+vr39/empqbT09OpqakaGhrNzc3FxcUkJCTf398gICCPj49oaGjv7+9JSUmCgoKysrLm5uZ3d3deXl42NjZAQEAVFRUPDw+8vLw7OztwcHBfX1+cnJxQUFAsLCxd6xblAAADn0lEQVR4nO3dbVPiMBDA8d2mBZSCDyg+HCqe3/87Xqh3M3cz5aC0TZPN3xeOgJbwm91lkxQrlS5XL2t1t/JQ6vr1x1KvRIqikN3b9l1kU6kuvmRzr4cv91mIzO830nzdVbciu0ddrw63nmZabWShbi4f6h+QR9X6xh/K/3hbbje7ur5+9YeZPfk7lqpvhwdkrrp9vfY35/5ZZffph9Ac+zACf4Rtc+g7f+ifUh9GcHW4Ueri/WupzpV+1Opvrl++/0jkyv/O4lrkY+af6dkfoS6a++VTS6f1qjmY+iHcLLXeNaMu9c8L8gP1L9ePvZiXOntoRqfLL5G9v7t6FumA5fpjbQfDWh3DcgNgydzFj1VEglXkgjVMGmpfrB41y42D5XpjPYyFFSay3s/DOlrgu6Vhwli787HC1azVb6w9WGBFgDVAU/o31m4YLP+9G1ZFZA2MVYIVHVYZbrqjFzWlF6Th8witQ3kUy7VMpI/ULCNYJwu8IayyH5ZrsOQk1n+nOzFgXdA6XIh1OrIsYAlYRNb4SzRggUUaghU9FmloC2vUDQvXpYNvWVbeh8Jq22QdAKvThoULuLsDFlhggQXWEFguT6yuZ9EExdpHhkVkgQXW5FiT1CxHzbIfWfRZYMVUswJh2ahZmUYWWGCBBZZ9rEyb0iDTnVx3d0qTkdW2b1gExgr5QSewWrGKZNKwqVnuX6yjp3b3rVk2IivCzxuCNeW7IVhhsdo6+JM1K3os0hAs0tAqls3IIg3BSmrV4Xu607FmMd2xFFlggUXNmhzL7uIfWPGlYWis3Kc7NvcNSUOw0msdtOPuTpJYNKV08GBNnoZMd4gssMCKFSvgOaXUrKw6eLCm7+BtrjqARRqCNTkWJ+DGElnWmlKwwEqwZjHdyTiywLoAK5fLXw1Ss05cHaW46BoWZ/ZZYPXFGunyV2Blj0UagkUagtUPq/vVfsdIw55X+80rsnpewBYssNLGomYRWWCBlRJW331DahaRBRZpSGSBBVZWWEx37EbWiP8g0R4WkZUMVmI1izQMEVkVWB0jq0wK61gaJlKzcsEiDcGKGCuXJRoiCyzeDW1gjT7dOetDA0x3WrBYogmJZbxmWcIavc+iZmUaWbQO0WKxRAMWaQhW5K1DJEs0RBZYYNnASmxHmshKJrLAAos+a3KsxCLL+HqWpTRk1cEuFmkIlsWalct0hxNDumKldU4ppxzlg0XNIrLAAislLJZobETWL2Beigdb3czxAAAAAElFTkSuQmCC'),
                                  height: 90,
                                )
                              ],
                            ),
                          ),
                          Container(
                            width: 600,
                            margin: const EdgeInsets.only(bottom: 10),
                            decoration:
                                BoxDecoration(border: Border.all(width: 1)),
                          ),
                          Container(
                            margin: const EdgeInsets.only(bottom: 10),
                            decoration:
                                BoxDecoration(border: Border.all(width: 1)),
                            width: 400,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: const [
                                Text(
                                  'Chalan No:',
                                  style: TextStyle(fontSize: 20),
                                ),
                                Text('123456789'),
                                Text(
                                  'Due date:',
                                  style: TextStyle(fontSize: 20),
                                ),
                                Text('15.12.2022'),
                              ],
                            ),
                          ),
                          Container(
                            width: 600,
                            margin: const EdgeInsets.only(bottom: 10),
                            decoration:
                                BoxDecoration(border: Border.all(width: 1)),
                          ),
                          Container(
                            margin: const EdgeInsets.all(20),
                            child: Table(
                              defaultColumnWidth: const FixedColumnWidth(230.0),
                              border: TableBorder.all(
                                  color: Colors.black,
                                  style: BorderStyle.solid,
                                  width: 2),
                              children: [
                                TableRow(children: [
                                  Column(children: const [
                                    Text(
                                      'Name',
                                      style: TextStyle(fontSize: 18),
                                    )
                                  ]),
                                  Column(
                                      children: const [Text('Mazhar Abbas')]),
                                ]),
                                TableRow(children: [
                                  Column(children: const [
                                    Text(
                                      'CNIC/others',
                                      style: TextStyle(fontSize: 18),
                                    )
                                  ]),
                                  Column(children: const [
                                    Text(
                                      '3210404100695',
                                    )
                                  ]),
                                ]),
                                TableRow(children: [
                                  Column(children: const [
                                    Text(
                                      'App#',
                                      style: TextStyle(fontSize: 18),
                                    )
                                  ]),
                                  Column(children: const [Text('987654')]),
                                ]),
                                TableRow(children: [
                                  Column(children: const [Text('Reg')]),
                                  Column(children: const [
                                    Text('S22BSEEN1M03003')
                                  ]),
                                ]),
                                TableRow(children: [
                                  Column(children: const [Text('Programme')]),
                                  Column(children: const [
                                    Text('ADP Software Engineering')
                                  ]),
                                ]),
                                TableRow(children: [
                                  Column(children: const [Text('App Title')]),
                                  Column(children: const [
                                    Text('semester chalan')
                                  ]),
                                ]),
                                TableRow(children: [
                                  Column(children: const [Text('Fee Session')]),
                                  Column(children: const [Text('Fall-2022')]),
                                ]),
                              ],
                            ),
                          ),
                          Container(
                            width: 600,
                            margin: const EdgeInsets.only(bottom: 10),
                            decoration:
                                BoxDecoration(border: Border.all(width: 4)),
                          ),
                          Container(
                            margin: const EdgeInsets.only(bottom: 10),
                            decoration:
                                BoxDecoration(border: Border.all(width: 1)),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: const [
                                Text(
                                  'Particular',
                                  style: TextStyle(fontSize: 18),
                                ),
                                Text('Amount Rs.'),
                              ],
                            ),
                          ),
                          Container(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: const [
                                Text(
                                  'Amount',
                                  style: TextStyle(fontSize: 18),
                                ),
                                Text('19000')
                              ],
                            ),
                          )
                        ]),
                  ),
                ],
              ),
            ),*/
          ],
        ),
      ),
    ),
  ));
}
