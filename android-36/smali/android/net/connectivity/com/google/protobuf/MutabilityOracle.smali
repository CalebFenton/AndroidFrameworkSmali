.class interface abstract Landroid/net/connectivity/com/google/protobuf/MutabilityOracle;
.super Ljava/lang/Object;
.source "MutabilityOracle.java"


# static fields
.field public static final blacklist IMMUTABLE:Landroid/net/connectivity/com/google/protobuf/MutabilityOracle;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 35
    new-instance v0, Landroid/net/connectivity/com/google/protobuf/MutabilityOracle$1;

    invoke-direct {v0}, Landroid/net/connectivity/com/google/protobuf/MutabilityOracle$1;-><init>()V

    sput-object v0, Landroid/net/connectivity/com/google/protobuf/MutabilityOracle;->IMMUTABLE:Landroid/net/connectivity/com/google/protobuf/MutabilityOracle;

    return-void
.end method


# virtual methods
.method public abstract blacklist ensureMutable()V
.end method
