.class Landroid/net/NetworkFactory$NetworkRequestInfo;
.super Ljava/lang/Object;
.source "NetworkFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/NetworkFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NetworkRequestInfo"
.end annotation


# instance fields
.field public final request:Landroid/net/NetworkRequest;

.field public requested:Z

.field public score:I

.field final synthetic this$0:Landroid/net/NetworkFactory;


# direct methods
.method public constructor <init>(Landroid/net/NetworkFactory;Landroid/net/NetworkRequest;I)V
    .locals 1
    .param p1, "this$0"    # Landroid/net/NetworkFactory;
    .param p2, "request"    # Landroid/net/NetworkRequest;
    .param p3, "score"    # I

    #@0
    .prologue
    .line 160
    iput-object p1, p0, Landroid/net/NetworkFactory$NetworkRequestInfo;->this$0:Landroid/net/NetworkFactory;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 161
    iput-object p2, p0, Landroid/net/NetworkFactory$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    #@7
    .line 162
    iput p3, p0, Landroid/net/NetworkFactory$NetworkRequestInfo;->score:I

    #@9
    .line 163
    const/4 v0, 0x0

    #@a
    iput-boolean v0, p0, Landroid/net/NetworkFactory$NetworkRequestInfo;->requested:Z

    #@c
    .line 160
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 168
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "{"

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    iget-object v1, p0, Landroid/net/NetworkFactory$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    #@e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v0

    #@12
    const-string/jumbo v1, ", score="

    #@15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v0

    #@19
    iget v1, p0, Landroid/net/NetworkFactory$NetworkRequestInfo;->score:I

    #@1b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v0

    #@1f
    const-string/jumbo v1, ", requested="

    #@22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v0

    #@26
    iget-boolean v1, p0, Landroid/net/NetworkFactory$NetworkRequestInfo;->requested:Z

    #@28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v0

    #@2c
    const-string/jumbo v1, "}"

    #@2f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v0

    #@33
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@36
    move-result-object v0

    #@37
    return-object v0
.end method
