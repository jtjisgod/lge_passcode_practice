.class Lnet/bughunting/passcode/MainActivity$1;
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

.field final synthetic val$passwordInput:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lnet/bughunting/passcode/MainActivity;Landroid/widget/EditText;)V
    .locals 0

    .line 28
    iput-object p1, p0, Lnet/bughunting/passcode/MainActivity$1;->this$0:Lnet/bughunting/passcode/MainActivity;

    iput-object p2, p0, Lnet/bughunting/passcode/MainActivity$1;->val$passwordInput:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 31
    iget-object p1, p0, Lnet/bughunting/passcode/MainActivity$1;->val$passwordInput:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 32
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "input("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") === password("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lnet/bughunting/passcode/MainActivity$1;->this$0:Lnet/bughunting/passcode/MainActivity;

    invoke-static {v1}, Lnet/bughunting/passcode/MainActivity;->access$000(Lnet/bughunting/passcode/MainActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Passcode"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    iget-object v0, p0, Lnet/bughunting/passcode/MainActivity$1;->this$0:Lnet/bughunting/passcode/MainActivity;

    invoke-static {v0}, Lnet/bughunting/passcode/MainActivity;->access$000(Lnet/bughunting/passcode/MainActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 35
    iget-object p1, p0, Lnet/bughunting/passcode/MainActivity$1;->this$0:Lnet/bughunting/passcode/MainActivity;

    const-string v1, "Correct Password"

    invoke-static {p1, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 38
    :cond_0
    iget-object p1, p0, Lnet/bughunting/passcode/MainActivity$1;->this$0:Lnet/bughunting/passcode/MainActivity;

    const-string v1, "Wrong!"

    invoke-static {p1, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void
.end method
