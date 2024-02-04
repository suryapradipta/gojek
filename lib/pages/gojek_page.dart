class GojekPage extends StatelessWidget {
  const GojekPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: AppColors.green2,
        elevation: 0,
        toolbarHeight: 71,
        title: HeaderComponent(),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 23),
            SearchComponent(),
            SizedBox(height: 15),
            GopayComponent(),
            SizedBox(height: 32),
            MenuComponent(),
            SizedBox(height: 20),
            LoyaltyComponent(),
            SizedBox(height: 16),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Text("Akses cepat", style: bold18),
            ),
            SizedBox(height: 10),
            AksesCepatComponent(),
            SizedBox(height: 32),
            GopayLaterComponent(),
            ...newsData.map(
              (e) => Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
                child: Container(
                  clipBehavior: Clip.hardEdge,
                  decoration: BoxDecoration(
                      border: Border.all(color: Color(0xffE8E8E8)),
                      borderRadius: BorderRadius.circular(15)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset('assets/images/${e.image}'),
                      Padding(
                        padding: const EdgeInsets.only(left: 24, top: 14),
                        child: Text(e.title, style: bold16,),
                      ),
                      SizedBox(height: 8),
                      Padding(
                        padding: const EdgeInsets.only(left: 24,bottom: 30, right: 24),
                        child: Text(e.description, style: regular14,),
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class GopayLaterComponent extends StatelessWidget {
  const GopayLaterComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            'assets/images/gopaylater.png',
            width: 98,
            height: 14,
          ),
          SizedBox(height: 8),
          Text("Lebih hemat pake GoPayLater", style: bold18),
          SizedBox(height: 8),
          Text(
            'Yuk, belanja di Tokopedia pake GoPay Later dan nikmatin cashback-nya~',
            style: regular14,
          )
        ],
      ),
    );
  }
}
