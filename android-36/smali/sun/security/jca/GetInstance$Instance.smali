.class public final Lsun/security/jca/GetInstance$Instance;
.super Ljava/lang/Object;
.source "GetInstance.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/security/jca/GetInstance;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Instance"
.end annotation


# instance fields
.field public final greylist-max-r impl:Ljava/lang/Object;

.field public final greylist-max-r provider:Ljava/security/Provider;


# direct methods
.method private constructor blacklist <init>(Ljava/security/Provider;Ljava/lang/Object;)V
    .registers 3
    .param p1, "provider"    # Ljava/security/Provider;
    .param p2, "impl"    # Ljava/lang/Object;

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p1, p0, Lsun/security/jca/GetInstance$Instance;->provider:Ljava/security/Provider;

    .line 55
    iput-object p2, p0, Lsun/security/jca/GetInstance$Instance;->impl:Ljava/lang/Object;

    .line 56
    return-void
.end method

.method synthetic constructor blacklist <init>(Ljava/security/Provider;Ljava/lang/Object;Lsun/security/jca/GetInstance-IA;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lsun/security/jca/GetInstance$Instance;-><init>(Ljava/security/Provider;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public blacklist toArray()[Ljava/lang/Object;
    .registers 3

    .line 60
    iget-object v0, p0, Lsun/security/jca/GetInstance$Instance;->impl:Ljava/lang/Object;

    iget-object v1, p0, Lsun/security/jca/GetInstance$Instance;->provider:Ljava/security/Provider;

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
