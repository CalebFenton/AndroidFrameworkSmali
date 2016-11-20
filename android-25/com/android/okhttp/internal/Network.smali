.class public interface abstract Lcom/android/okhttp/internal/Network;
.super Ljava/lang/Object;
.source "Network.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/okhttp/internal/Network$1;
    }
.end annotation


# static fields
.field public static final DEFAULT:Lcom/android/okhttp/internal/Network;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 26
    new-instance v0, Lcom/android/okhttp/internal/Network$1;

    #@2
    invoke-direct {v0}, Lcom/android/okhttp/internal/Network$1;-><init>()V

    #@5
    sput-object v0, Lcom/android/okhttp/internal/Network;->DEFAULT:Lcom/android/okhttp/internal/Network;

    #@7
    .line 25
    return-void
.end method


# virtual methods
.method public abstract resolveInetAddresses(Ljava/lang/String;)[Ljava/net/InetAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation
.end method
