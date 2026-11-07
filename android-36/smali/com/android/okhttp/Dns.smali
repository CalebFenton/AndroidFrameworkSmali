.class public interface abstract Lcom/android/okhttp/Dns;
.super Ljava/lang/Object;
.source "Dns.java"


# static fields
.field public static final greylist-max-o SYSTEM:Lcom/android/okhttp/Dns;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 38
    new-instance v0, Lcom/android/okhttp/Dns$1;

    invoke-direct {v0}, Lcom/android/okhttp/Dns$1;-><init>()V

    sput-object v0, Lcom/android/okhttp/Dns;->SYSTEM:Lcom/android/okhttp/Dns;

    return-void
.end method


# virtual methods
.method public abstract greylist-max-o lookup(Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/net/InetAddress;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation
.end method
