.class Lnet/bughunting/toastapp/MainActivity$1;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/bughunting/toastapp/MainActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/bughunting/toastapp/MainActivity;


# direct methods
.method constructor <init>(Lnet/bughunting/toastapp/MainActivity;)V
    .locals 0

    .line 17
    iput-object p1, p0, Lnet/bughunting/toastapp/MainActivity$1;->this$0:Lnet/bughunting/toastapp/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 20
    iget-object p1, p0, Lnet/bughunting/toastapp/MainActivity$1;->this$0:Lnet/bughunting/toastapp/MainActivity;

    const-string v0, "Hello, World!"

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method
