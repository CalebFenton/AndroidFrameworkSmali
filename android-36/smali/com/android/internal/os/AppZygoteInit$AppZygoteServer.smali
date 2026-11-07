.class Lcom/android/internal/os/AppZygoteInit$AppZygoteServer;
.super Lcom/android/internal/os/ZygoteServer;
.source "AppZygoteInit.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/AppZygoteInit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AppZygoteServer"
.end annotation


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 43
    invoke-direct {p0}, Lcom/android/internal/os/ZygoteServer;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/android/internal/os/AppZygoteInit-IA;)V
    .registers 2

    invoke-direct {p0}, Lcom/android/internal/os/AppZygoteInit$AppZygoteServer;-><init>()V

    return-void
.end method


# virtual methods
.method protected blacklist createNewConnection(Landroid/net/LocalSocket;Ljava/lang/String;)Lcom/android/internal/os/ZygoteConnection;
    .registers 4
    .param p1, "socket"    # Landroid/net/LocalSocket;
    .param p2, "abiList"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 47
    new-instance v0, Lcom/android/internal/os/AppZygoteInit$AppZygoteConnection;

    invoke-direct {v0, p1, p2}, Lcom/android/internal/os/AppZygoteInit$AppZygoteConnection;-><init>(Landroid/net/LocalSocket;Ljava/lang/String;)V

    return-object v0
.end method
