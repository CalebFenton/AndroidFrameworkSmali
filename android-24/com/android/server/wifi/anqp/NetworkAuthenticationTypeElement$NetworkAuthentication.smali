.class public Lcom/android/server/wifi/anqp/NetworkAuthenticationTypeElement$NetworkAuthentication;
.super Ljava/lang/Object;
.source "NetworkAuthenticationTypeElement.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/anqp/NetworkAuthenticationTypeElement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NetworkAuthentication"
.end annotation


# instance fields
.field private final m_type:Lcom/android/server/wifi/anqp/NetworkAuthenticationTypeElement$NwkAuthTypeEnum;

.field private final m_url:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/android/server/wifi/anqp/NetworkAuthenticationTypeElement$NwkAuthTypeEnum;Ljava/lang/String;)V
    .locals 0
    .param p1, "type"    # Lcom/android/server/wifi/anqp/NetworkAuthenticationTypeElement$NwkAuthTypeEnum;
    .param p2, "url"    # Ljava/lang/String;

    #@0
    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 32
    iput-object p1, p0, Lcom/android/server/wifi/anqp/NetworkAuthenticationTypeElement$NetworkAuthentication;->m_type:Lcom/android/server/wifi/anqp/NetworkAuthenticationTypeElement$NwkAuthTypeEnum;

    #@5
    .line 33
    iput-object p2, p0, Lcom/android/server/wifi/anqp/NetworkAuthenticationTypeElement$NetworkAuthentication;->m_url:Ljava/lang/String;

    #@7
    .line 31
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/wifi/anqp/NetworkAuthenticationTypeElement$NwkAuthTypeEnum;Ljava/lang/String;Lcom/android/server/wifi/anqp/NetworkAuthenticationTypeElement$NetworkAuthentication;)V
    .locals 0
    .param p1, "type"    # Lcom/android/server/wifi/anqp/NetworkAuthenticationTypeElement$NwkAuthTypeEnum;
    .param p2, "url"    # Ljava/lang/String;

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/wifi/anqp/NetworkAuthenticationTypeElement$NetworkAuthentication;-><init>(Lcom/android/server/wifi/anqp/NetworkAuthenticationTypeElement$NwkAuthTypeEnum;Ljava/lang/String;)V

    #@3
    return-void
.end method


# virtual methods
.method public getType()Lcom/android/server/wifi/anqp/NetworkAuthenticationTypeElement$NwkAuthTypeEnum;
    .locals 1

    #@0
    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/server/wifi/anqp/NetworkAuthenticationTypeElement$NetworkAuthentication;->m_type:Lcom/android/server/wifi/anqp/NetworkAuthenticationTypeElement$NwkAuthTypeEnum;

    #@2
    return-object v0
.end method

.method public getURL()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/server/wifi/anqp/NetworkAuthenticationTypeElement$NetworkAuthentication;->m_url:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 46
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "NetworkAuthentication{m_type="

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    .line 47
    iget-object v1, p0, Lcom/android/server/wifi/anqp/NetworkAuthenticationTypeElement$NetworkAuthentication;->m_type:Lcom/android/server/wifi/anqp/NetworkAuthenticationTypeElement$NwkAuthTypeEnum;

    #@e
    .line 46
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v0

    #@12
    .line 48
    const-string/jumbo v1, ", m_url=\'"

    #@15
    .line 46
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v0

    #@19
    .line 48
    iget-object v1, p0, Lcom/android/server/wifi/anqp/NetworkAuthenticationTypeElement$NetworkAuthentication;->m_url:Ljava/lang/String;

    #@1b
    .line 46
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v0

    #@1f
    .line 48
    const/16 v1, 0x27

    #@21
    .line 46
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@24
    move-result-object v0

    #@25
    .line 49
    const/16 v1, 0x7d

    #@27
    .line 46
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v0

    #@2b
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2e
    move-result-object v0

    #@2f
    return-object v0
.end method
