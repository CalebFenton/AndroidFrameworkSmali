.class Landroid/net/ConnectivityThread$Singleton;
.super Ljava/lang/Object;
.source "ConnectivityThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/ConnectivityThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Singleton"
.end annotation


# static fields
.field private static final greylist-max-o INSTANCE:Landroid/net/ConnectivityThread;


# direct methods
.method static bridge synthetic blacklist -$$Nest$sfgetINSTANCE()Landroid/net/ConnectivityThread;
    .registers 1

    sget-object v0, Landroid/net/ConnectivityThread$Singleton;->INSTANCE:Landroid/net/ConnectivityThread;

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 36
    invoke-static {}, Landroid/net/ConnectivityThread;->-$$Nest$smcreateInstance()Landroid/net/ConnectivityThread;

    move-result-object v0

    sput-object v0, Landroid/net/ConnectivityThread$Singleton;->INSTANCE:Landroid/net/ConnectivityThread;

    return-void
.end method

.method private constructor greylist-max-o <init>()V
    .registers 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
