.class public Lnet/bughunting/toastapp/MainActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "MainActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 14
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0b001c

    .line 15
    invoke-virtual {p0, p1}, Lnet/bughunting/toastapp/MainActivity;->setContentView(I)V

    const p1, 0x7f080062

    .line 16
    invoke-virtual {p0, p1}, Lnet/bughunting/toastapp/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    .line 17
    new-instance v0, Lnet/bughunting/toastapp/MainActivity$1;

    invoke-direct {v0, p0}, Lnet/bughunting/toastapp/MainActivity$1;-><init>(Lnet/bughunting/toastapp/MainActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
