.class public Lnet/bughunting/passcode/MainActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "MainActivity.java"


# instance fields
.field private clickCount:I

.field private correctPassword:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 12
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    const-string v0, "0414"

    .line 14
    iput-object v0, p0, Lnet/bughunting/passcode/MainActivity;->correctPassword:Ljava/lang/String;

    const/4 v0, 0x0

    .line 15
    iput v0, p0, Lnet/bughunting/passcode/MainActivity;->clickCount:I

    return-void
.end method

.method static synthetic access$000(Lnet/bughunting/passcode/MainActivity;)Ljava/lang/String;
    .locals 0

    .line 12
    iget-object p0, p0, Lnet/bughunting/passcode/MainActivity;->correctPassword:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$002(Lnet/bughunting/passcode/MainActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 12
    iput-object p1, p0, Lnet/bughunting/passcode/MainActivity;->correctPassword:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100(Lnet/bughunting/passcode/MainActivity;)I
    .locals 0

    .line 12
    iget p0, p0, Lnet/bughunting/passcode/MainActivity;->clickCount:I

    return p0
.end method

.method static synthetic access$108(Lnet/bughunting/passcode/MainActivity;)I
    .locals 2

    .line 12
    iget v0, p0, Lnet/bughunting/passcode/MainActivity;->clickCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lnet/bughunting/passcode/MainActivity;->clickCount:I

    return v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 19
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0b001c

    .line 20
    invoke-virtual {p0, p1}, Lnet/bughunting/passcode/MainActivity;->setContentView(I)V

    const p1, 0x7f080062

    .line 23
    invoke-virtual {p0, p1}, Lnet/bughunting/passcode/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    const v0, 0x7f0800ab

    .line 24
    invoke-virtual {p0, v0}, Lnet/bughunting/passcode/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    const v1, 0x7f0801be

    .line 25
    invoke-virtual {p0, v1}, Lnet/bughunting/passcode/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 28
    new-instance v2, Lnet/bughunting/passcode/MainActivity$1;

    invoke-direct {v2, p0, v0}, Lnet/bughunting/passcode/MainActivity$1;-><init>(Lnet/bughunting/passcode/MainActivity;Landroid/widget/EditText;)V

    invoke-virtual {p1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 44
    new-instance p1, Lnet/bughunting/passcode/MainActivity$2;

    invoke-direct {p1, p0}, Lnet/bughunting/passcode/MainActivity$2;-><init>(Lnet/bughunting/passcode/MainActivity;)V

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
