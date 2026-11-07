.class Landroid/text/method/TextKeyListener$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "TextKeyListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/text/method/TextKeyListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SettingsObserver"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/text/method/TextKeyListener;


# direct methods
.method public constructor blacklist <init>(Landroid/text/method/TextKeyListener;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 277
    iput-object p1, p0, Landroid/text/method/TextKeyListener$SettingsObserver;->this$0:Landroid/text/method/TextKeyListener;

    .line 278
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 279
    return-void
.end method


# virtual methods
.method public whitelist onChange(Z)V
    .registers 5
    .param p1, "selfChange"    # Z

    .line 283
    iget-object v0, p0, Landroid/text/method/TextKeyListener$SettingsObserver;->this$0:Landroid/text/method/TextKeyListener;

    invoke-static {v0}, Landroid/text/method/TextKeyListener;->-$$Nest$fgetmResolver(Landroid/text/method/TextKeyListener;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_23

    .line 284
    iget-object v0, p0, Landroid/text/method/TextKeyListener$SettingsObserver;->this$0:Landroid/text/method/TextKeyListener;

    invoke-static {v0}, Landroid/text/method/TextKeyListener;->-$$Nest$fgetmResolver(Landroid/text/method/TextKeyListener;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentResolver;

    .line 285
    .local v0, "contentResolver":Landroid/content/ContentResolver;
    if-nez v0, :cond_1d

    .line 286
    iget-object v2, p0, Landroid/text/method/TextKeyListener$SettingsObserver;->this$0:Landroid/text/method/TextKeyListener;

    invoke-static {v2, v1}, Landroid/text/method/TextKeyListener;->-$$Nest$fputmPrefsInited(Landroid/text/method/TextKeyListener;Z)V

    goto :goto_22

    .line 288
    :cond_1d
    iget-object v1, p0, Landroid/text/method/TextKeyListener$SettingsObserver;->this$0:Landroid/text/method/TextKeyListener;

    invoke-static {v1, v0}, Landroid/text/method/TextKeyListener;->-$$Nest$mupdatePrefs(Landroid/text/method/TextKeyListener;Landroid/content/ContentResolver;)V

    .line 290
    .end local v0    # "contentResolver":Landroid/content/ContentResolver;
    :goto_22
    goto :goto_28

    .line 291
    :cond_23
    iget-object v0, p0, Landroid/text/method/TextKeyListener$SettingsObserver;->this$0:Landroid/text/method/TextKeyListener;

    invoke-static {v0, v1}, Landroid/text/method/TextKeyListener;->-$$Nest$fputmPrefsInited(Landroid/text/method/TextKeyListener;Z)V

    .line 293
    :goto_28
    return-void
.end method
