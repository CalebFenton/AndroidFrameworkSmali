.class Landroid/preference/DialogPreference$1;
.super Ljava/lang/Object;
.source "DialogPreference.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/preference/DialogPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/preference/DialogPreference;


# direct methods
.method constructor blacklist <init>(Landroid/preference/DialogPreference;)V
    .registers 2
    .param p1, "this$0"    # Landroid/preference/DialogPreference;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 87
    iput-object p1, p0, Landroid/preference/DialogPreference$1;->this$0:Landroid/preference/DialogPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .registers 2

    .line 90
    iget-object v0, p0, Landroid/preference/DialogPreference$1;->this$0:Landroid/preference/DialogPreference;

    invoke-static {v0}, Landroid/preference/DialogPreference;->-$$Nest$fgetmDialog(Landroid/preference/DialogPreference;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 91
    return-void
.end method
