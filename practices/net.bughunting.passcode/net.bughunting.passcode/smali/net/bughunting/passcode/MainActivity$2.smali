.class Lnet/bughunting/passcode/MainActivity$2;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/bughunting/passcode/MainActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/bughunting/passcode/MainActivity;


# direct methods
.method constructor <init>(Lnet/bughunting/passcode/MainActivity;)V
    .locals 0

    .line 44
    iput-object p1, p0, Lnet/bughunting/passcode/MainActivity$2;->this$0:Lnet/bughunting/passcode/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 47
    iget-object p1, p0, Lnet/bughunting/passcode/MainActivity$2;->this$0:Lnet/bughunting/passcode/MainActivity;

    invoke-static {p1}, Lnet/bughunting/passcode/MainActivity;->access$108(Lnet/bughunting/passcode/MainActivity;)I

    .line 48
    iget-object p1, p0, Lnet/bughunting/passcode/MainActivity$2;->this$0:Lnet/bughunting/passcode/MainActivity;

    invoke-static {p1}, Lnet/bughunting/passcode/MainActivity;->access$100(Lnet/bughunting/passcode/MainActivity;)I

    move-result p1

    const/16 v0, 0xa

    if-ne p1, v0, :cond_0

    .line 49
    iget-object p1, p0, Lnet/bughunting/passcode/MainActivity$2;->this$0:Lnet/bughunting/passcode/MainActivity;

    const-string v0, "0000"

    invoke-static {p1, v0}, Lnet/bughunting/passcode/MainActivity;->access$002(Lnet/bughunting/passcode/MainActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 50
    iget-object p1, p0, Lnet/bughunting/passcode/MainActivity$2;->this$0:Lnet/bughunting/passcode/MainActivity;

    const/4 v0, 0x0

    const-string v1, "Password Reset to 0000"

    invoke-static {p1, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :cond_0
    return-void
.end method
