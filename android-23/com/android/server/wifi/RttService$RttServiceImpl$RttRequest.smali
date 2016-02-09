.class Lcom/android/server/wifi/RttService$RttServiceImpl$RttRequest;
.super Ljava/lang/Object;
.source "RttService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/RttService$RttServiceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RttRequest"
.end annotation


# instance fields
.field ci:Lcom/android/server/wifi/RttService$RttServiceImpl$ClientInfo;

.field key:Ljava/lang/Integer;

.field params:[Landroid/net/wifi/RttManager$RttParams;

.field final synthetic this$1:Lcom/android/server/wifi/RttService$RttServiceImpl;


# direct methods
.method private constructor <init>(Lcom/android/server/wifi/RttService$RttServiceImpl;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/server/wifi/RttService$RttServiceImpl;

    #@0
    .prologue
    .line 144
    iput-object p1, p0, Lcom/android/server/wifi/RttService$RttServiceImpl$RttRequest;->this$1:Lcom/android/server/wifi/RttService$RttServiceImpl;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/wifi/RttService$RttServiceImpl;Lcom/android/server/wifi/RttService$RttServiceImpl$RttRequest;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/server/wifi/RttService$RttServiceImpl;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/wifi/RttService$RttServiceImpl$RttRequest;-><init>(Lcom/android/server/wifi/RttService$RttServiceImpl;)V

    #@3
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    .line 151
    new-instance v1, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    invoke-virtual {p0}, Lcom/android/server/wifi/RttService$RttServiceImpl$RttRequest;->getClass()Ljava/lang/Class;

    #@8
    move-result-object v2

    #@9
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@c
    move-result-object v2

    #@d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10
    move-result-object v1

    #@11
    const-string/jumbo v2, "@"

    #@14
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v1

    #@18
    invoke-virtual {p0}, Lcom/android/server/wifi/RttService$RttServiceImpl$RttRequest;->hashCode()I

    #@1b
    move-result v2

    #@1c
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@1f
    move-result-object v2

    #@20
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v1

    #@24
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@27
    move-result-object v0

    #@28
    .line 152
    .local v0, "str":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/wifi/RttService$RttServiceImpl$RttRequest;->key:Ljava/lang/Integer;

    #@2a
    if-eqz v1, :cond_0

    #@2c
    .line 153
    new-instance v1, Ljava/lang/StringBuilder;

    #@2e
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@31
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@34
    move-result-object v1

    #@35
    const-string/jumbo v2, " key: "

    #@38
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3b
    move-result-object v1

    #@3c
    iget-object v2, p0, Lcom/android/server/wifi/RttService$RttServiceImpl$RttRequest;->key:Ljava/lang/Integer;

    #@3e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@41
    move-result-object v1

    #@42
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@45
    move-result-object v1

    #@46
    return-object v1

    #@47
    .line 155
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    #@49
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@4c
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4f
    move-result-object v1

    #@50
    const-string/jumbo v2, " key: "

    #@53
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@56
    move-result-object v1

    #@57
    const-string/jumbo v2, " , null"

    #@5a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5d
    move-result-object v1

    #@5e
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@61
    move-result-object v1

    #@62
    return-object v1
.end method
