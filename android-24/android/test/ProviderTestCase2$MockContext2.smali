.class Landroid/test/ProviderTestCase2$MockContext2;
.super Landroid/test/mock/MockContext;
.source "ProviderTestCase2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/test/ProviderTestCase2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MockContext2"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/test/ProviderTestCase2;


# direct methods
.method private constructor <init>(Landroid/test/ProviderTestCase2;)V
    .locals 0

    #@0
    .prologue
    .line 78
    .local p0, "this":Landroid/test/ProviderTestCase2$MockContext2;, "Landroid/test/ProviderTestCase2<TT;>.MockContext2;"
    .local p1, "this$0":Landroid/test/ProviderTestCase2;, "Landroid/test/ProviderTestCase2<TT;>;"
    iput-object p1, p0, Landroid/test/ProviderTestCase2$MockContext2;->this$0:Landroid/test/ProviderTestCase2;

    #@2
    invoke-direct {p0}, Landroid/test/mock/MockContext;-><init>()V

    #@5
    return-void
.end method

.method synthetic constructor <init>(Landroid/test/ProviderTestCase2;Landroid/test/ProviderTestCase2$MockContext2;)V
    .locals 0
    .param p1, "this$0"    # Landroid/test/ProviderTestCase2;

    #@0
    .prologue
    .local p0, "this":Landroid/test/ProviderTestCase2$MockContext2;, "Landroid/test/ProviderTestCase2<TT;>.MockContext2;"
    invoke-direct {p0, p1}, Landroid/test/ProviderTestCase2$MockContext2;-><init>(Landroid/test/ProviderTestCase2;)V

    #@3
    return-void
.end method


# virtual methods
.method public getApplicationContext()Landroid/content/Context;
    .locals 0

    #@0
    .prologue
    .line 94
    .local p0, "this":Landroid/test/ProviderTestCase2$MockContext2;, "Landroid/test/ProviderTestCase2<TT;>.MockContext2;"
    return-object p0
.end method

.method public getDir(Ljava/lang/String;I)Ljava/io/File;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "mode"    # I

    #@0
    .prologue
    .line 89
    .local p0, "this":Landroid/test/ProviderTestCase2$MockContext2;, "Landroid/test/ProviderTestCase2<TT;>.MockContext2;"
    iget-object v0, p0, Landroid/test/ProviderTestCase2$MockContext2;->this$0:Landroid/test/ProviderTestCase2;

    #@2
    invoke-virtual {v0}, Landroid/test/ProviderTestCase2;->getContext()Landroid/content/Context;

    #@5
    move-result-object v0

    #@6
    new-instance v1, Ljava/lang/StringBuilder;

    #@8
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@b
    const-string/jumbo v2, "mockcontext2_"

    #@e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v1

    #@12
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v1

    #@16
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@19
    move-result-object v1

    #@1a
    invoke-virtual {v0, v1, p2}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    #@1d
    move-result-object v0

    #@1e
    return-object v0
.end method

.method public getResources()Landroid/content/res/Resources;
    .locals 1

    #@0
    .prologue
    .line 82
    .local p0, "this":Landroid/test/ProviderTestCase2$MockContext2;, "Landroid/test/ProviderTestCase2<TT;>.MockContext2;"
    iget-object v0, p0, Landroid/test/ProviderTestCase2$MockContext2;->this$0:Landroid/test/ProviderTestCase2;

    #@2
    invoke-virtual {v0}, Landroid/test/ProviderTestCase2;->getContext()Landroid/content/Context;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@9
    move-result-object v0

    #@a
    return-object v0
.end method
