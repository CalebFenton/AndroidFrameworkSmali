.class Lcom/android/org/conscrypt/AbstractConscryptSocket$1;
.super Lcom/android/org/conscrypt/PeerInfoProvider;
.source "AbstractConscryptSocket.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/conscrypt/AbstractConscryptSocket;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/org/conscrypt/AbstractConscryptSocket;


# direct methods
.method constructor blacklist <init>(Lcom/android/org/conscrypt/AbstractConscryptSocket;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/org/conscrypt/AbstractConscryptSocket;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 62
    iput-object p1, p0, Lcom/android/org/conscrypt/AbstractConscryptSocket$1;->this$0:Lcom/android/org/conscrypt/AbstractConscryptSocket;

    invoke-direct {p0}, Lcom/android/org/conscrypt/PeerInfoProvider;-><init>()V

    return-void
.end method


# virtual methods
.method blacklist getHostname()Ljava/lang/String;
    .registers 2

    .line 65
    iget-object v0, p0, Lcom/android/org/conscrypt/AbstractConscryptSocket$1;->this$0:Lcom/android/org/conscrypt/AbstractConscryptSocket;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/AbstractConscryptSocket;->getHostname()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method blacklist getHostnameOrIP()Ljava/lang/String;
    .registers 2

    .line 70
    iget-object v0, p0, Lcom/android/org/conscrypt/AbstractConscryptSocket$1;->this$0:Lcom/android/org/conscrypt/AbstractConscryptSocket;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/AbstractConscryptSocket;->getHostnameOrIP()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method blacklist getPort()I
    .registers 2

    .line 75
    iget-object v0, p0, Lcom/android/org/conscrypt/AbstractConscryptSocket$1;->this$0:Lcom/android/org/conscrypt/AbstractConscryptSocket;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/AbstractConscryptSocket;->getPort()I

    move-result v0

    return v0
.end method
