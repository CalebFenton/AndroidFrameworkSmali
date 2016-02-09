.class Landroid/content/ContentProviderClient$NotRespondingRunnable;
.super Ljava/lang/Object;
.source "ContentProviderClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/ContentProviderClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NotRespondingRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/content/ContentProviderClient;


# direct methods
.method private constructor <init>(Landroid/content/ContentProviderClient;)V
    .locals 0
    .param p1, "this$0"    # Landroid/content/ContentProviderClient;

    #@0
    .prologue
    .line 498
    iput-object p1, p0, Landroid/content/ContentProviderClient$NotRespondingRunnable;->this$0:Landroid/content/ContentProviderClient;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method

.method synthetic constructor <init>(Landroid/content/ContentProviderClient;Landroid/content/ContentProviderClient$NotRespondingRunnable;)V
    .locals 0
    .param p1, "this$0"    # Landroid/content/ContentProviderClient;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/content/ContentProviderClient$NotRespondingRunnable;-><init>(Landroid/content/ContentProviderClient;)V

    #@3
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    #@0
    .prologue
    .line 501
    const-string/jumbo v0, "ContentProviderClient"

    #@3
    new-instance v1, Ljava/lang/StringBuilder;

    #@5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@8
    const-string/jumbo v2, "Detected provider not responding: "

    #@b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e
    move-result-object v1

    #@f
    iget-object v2, p0, Landroid/content/ContentProviderClient$NotRespondingRunnable;->this$0:Landroid/content/ContentProviderClient;

    #@11
    invoke-static {v2}, Landroid/content/ContentProviderClient;->-get0(Landroid/content/ContentProviderClient;)Landroid/content/IContentProvider;

    #@14
    move-result-object v2

    #@15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v1

    #@19
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1c
    move-result-object v1

    #@1d
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@20
    .line 502
    iget-object v0, p0, Landroid/content/ContentProviderClient$NotRespondingRunnable;->this$0:Landroid/content/ContentProviderClient;

    #@22
    invoke-static {v0}, Landroid/content/ContentProviderClient;->-get1(Landroid/content/ContentProviderClient;)Landroid/content/ContentResolver;

    #@25
    move-result-object v0

    #@26
    iget-object v1, p0, Landroid/content/ContentProviderClient$NotRespondingRunnable;->this$0:Landroid/content/ContentProviderClient;

    #@28
    invoke-static {v1}, Landroid/content/ContentProviderClient;->-get0(Landroid/content/ContentProviderClient;)Landroid/content/IContentProvider;

    #@2b
    move-result-object v1

    #@2c
    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->appNotRespondingViaProvider(Landroid/content/IContentProvider;)V

    #@2f
    .line 500
    return-void
.end method
