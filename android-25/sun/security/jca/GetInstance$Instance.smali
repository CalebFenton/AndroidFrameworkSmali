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
.field public final impl:Ljava/lang/Object;

.field public final provider:Ljava/security/Provider;


# direct methods
.method private constructor <init>(Ljava/security/Provider;Ljava/lang/Object;)V
    .locals 0
    .param p1, "provider"    # Ljava/security/Provider;
    .param p2, "impl"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 54
    iput-object p1, p0, Lsun/security/jca/GetInstance$Instance;->provider:Ljava/security/Provider;

    #@5
    .line 55
    iput-object p2, p0, Lsun/security/jca/GetInstance$Instance;->impl:Ljava/lang/Object;

    #@7
    .line 53
    return-void
.end method

.method synthetic constructor <init>(Ljava/security/Provider;Ljava/lang/Object;Lsun/security/jca/GetInstance$Instance;)V
    .locals 0
    .param p1, "provider"    # Ljava/security/Provider;
    .param p2, "impl"    # Ljava/lang/Object;

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Lsun/security/jca/GetInstance$Instance;-><init>(Ljava/security/Provider;Ljava/lang/Object;)V

    #@3
    return-void
.end method


# virtual methods
.method public toArray()[Ljava/lang/Object;
    .locals 3

    #@0
    .prologue
    .line 60
    const/4 v0, 0x2

    #@1
    new-array v0, v0, [Ljava/lang/Object;

    #@3
    iget-object v1, p0, Lsun/security/jca/GetInstance$Instance;->impl:Ljava/lang/Object;

    #@5
    const/4 v2, 0x0

    #@6
    aput-object v1, v0, v2

    #@8
    iget-object v1, p0, Lsun/security/jca/GetInstance$Instance;->provider:Ljava/security/Provider;

    #@a
    const/4 v2, 0x1

    #@b
    aput-object v1, v0, v2

    #@d
    return-object v0
.end method
