.class final Landroid/net/connectivity/com/google/protobuf/ArrayDecoders$Registers;
.super Ljava/lang/Object;
.source "ArrayDecoders.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/connectivity/com/google/protobuf/ArrayDecoders;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Registers"
.end annotation


# instance fields
.field public final blacklist extensionRegistry:Landroid/net/connectivity/com/google/protobuf/ExtensionRegistryLite;

.field public blacklist int1:I

.field public blacklist long1:J

.field public blacklist object1:Ljava/lang/Object;


# direct methods
.method constructor blacklist <init>()V
    .registers 2

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    invoke-static {}, Landroid/net/connectivity/com/google/protobuf/ExtensionRegistryLite;->getEmptyRegistry()Landroid/net/connectivity/com/google/protobuf/ExtensionRegistryLite;

    move-result-object v0

    iput-object v0, p0, Landroid/net/connectivity/com/google/protobuf/ArrayDecoders$Registers;->extensionRegistry:Landroid/net/connectivity/com/google/protobuf/ExtensionRegistryLite;

    .line 67
    return-void
.end method

.method constructor blacklist <init>(Landroid/net/connectivity/com/google/protobuf/ExtensionRegistryLite;)V
    .registers 3
    .param p1, "extensionRegistry"    # Landroid/net/connectivity/com/google/protobuf/ExtensionRegistryLite;

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    if-eqz p1, :cond_8

    .line 73
    iput-object p1, p0, Landroid/net/connectivity/com/google/protobuf/ArrayDecoders$Registers;->extensionRegistry:Landroid/net/connectivity/com/google/protobuf/ExtensionRegistryLite;

    .line 74
    return-void

    .line 71
    :cond_8
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method
