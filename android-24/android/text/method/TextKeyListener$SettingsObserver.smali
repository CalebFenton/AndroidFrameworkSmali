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
.field final synthetic this$0:Landroid/text/method/TextKeyListener;


# direct methods
.method public constructor <init>(Landroid/text/method/TextKeyListener;)V
    .locals 1
    .param p1, "this$0"    # Landroid/text/method/TextKeyListener;

    #@0
    .prologue
    .line 271
    iput-object p1, p0, Landroid/text/method/TextKeyListener$SettingsObserver;->this$0:Landroid/text/method/TextKeyListener;

    #@2
    .line 272
    new-instance v0, Landroid/os/Handler;

    #@4
    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    #@7
    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    #@a
    .line 271
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 3
    .param p1, "selfChange"    # Z

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 277
    iget-object v1, p0, Landroid/text/method/TextKeyListener$SettingsObserver;->this$0:Landroid/text/method/TextKeyListener;

    #@3
    invoke-static {v1}, Landroid/text/method/TextKeyListener;->-get0(Landroid/text/method/TextKeyListener;)Ljava/lang/ref/WeakReference;

    #@6
    move-result-object v1

    #@7
    if-eqz v1, :cond_1

    #@9
    .line 278
    iget-object v1, p0, Landroid/text/method/TextKeyListener$SettingsObserver;->this$0:Landroid/text/method/TextKeyListener;

    #@b
    invoke-static {v1}, Landroid/text/method/TextKeyListener;->-get0(Landroid/text/method/TextKeyListener;)Ljava/lang/ref/WeakReference;

    #@e
    move-result-object v1

    #@f
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    #@12
    move-result-object v0

    #@13
    check-cast v0, Landroid/content/ContentResolver;

    #@15
    .line 279
    .local v0, "contentResolver":Landroid/content/ContentResolver;
    if-nez v0, :cond_0

    #@17
    .line 280
    iget-object v1, p0, Landroid/text/method/TextKeyListener$SettingsObserver;->this$0:Landroid/text/method/TextKeyListener;

    #@19
    invoke-static {v1, v2}, Landroid/text/method/TextKeyListener;->-set0(Landroid/text/method/TextKeyListener;Z)Z

    #@1c
    .line 276
    .end local v0    # "contentResolver":Landroid/content/ContentResolver;
    :goto_0
    return-void

    #@1d
    .line 282
    .restart local v0    # "contentResolver":Landroid/content/ContentResolver;
    :cond_0
    iget-object v1, p0, Landroid/text/method/TextKeyListener$SettingsObserver;->this$0:Landroid/text/method/TextKeyListener;

    #@1f
    invoke-static {v1, v0}, Landroid/text/method/TextKeyListener;->-wrap0(Landroid/text/method/TextKeyListener;Landroid/content/ContentResolver;)V

    #@22
    goto :goto_0

    #@23
    .line 285
    .end local v0    # "contentResolver":Landroid/content/ContentResolver;
    :cond_1
    iget-object v1, p0, Landroid/text/method/TextKeyListener$SettingsObserver;->this$0:Landroid/text/method/TextKeyListener;

    #@25
    invoke-static {v1, v2}, Landroid/text/method/TextKeyListener;->-set0(Landroid/text/method/TextKeyListener;Z)Z

    #@28
    goto :goto_0
.end method
