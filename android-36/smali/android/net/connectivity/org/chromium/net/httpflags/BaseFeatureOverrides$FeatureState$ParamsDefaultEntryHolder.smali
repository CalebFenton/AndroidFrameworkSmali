.class final Landroid/net/connectivity/org/chromium/net/httpflags/BaseFeatureOverrides$FeatureState$ParamsDefaultEntryHolder;
.super Ljava/lang/Object;
.source "BaseFeatureOverrides.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/connectivity/org/chromium/net/httpflags/BaseFeatureOverrides$FeatureState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ParamsDefaultEntryHolder"
.end annotation


# static fields
.field static final blacklist defaultEntry:Landroid/net/connectivity/com/google/protobuf/MapEntryLite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/net/connectivity/com/google/protobuf/MapEntryLite<",
            "Ljava/lang/String;",
            "Landroid/net/connectivity/com/google/protobuf/ByteString;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 4

    .line 308
    sget-object v0, Landroid/net/connectivity/com/google/protobuf/WireFormat$FieldType;->STRING:Landroid/net/connectivity/com/google/protobuf/WireFormat$FieldType;

    sget-object v1, Landroid/net/connectivity/com/google/protobuf/WireFormat$FieldType;->BYTES:Landroid/net/connectivity/com/google/protobuf/WireFormat$FieldType;

    sget-object v2, Landroid/net/connectivity/com/google/protobuf/ByteString;->EMPTY:Landroid/net/connectivity/com/google/protobuf/ByteString;

    .line 310
    const-string v3, ""

    invoke-static {v0, v3, v1, v2}, Landroid/net/connectivity/com/google/protobuf/MapEntryLite;->newDefaultInstance(Landroid/net/connectivity/com/google/protobuf/WireFormat$FieldType;Ljava/lang/Object;Landroid/net/connectivity/com/google/protobuf/WireFormat$FieldType;Ljava/lang/Object;)Landroid/net/connectivity/com/google/protobuf/MapEntryLite;

    move-result-object v0

    sput-object v0, Landroid/net/connectivity/org/chromium/net/httpflags/BaseFeatureOverrides$FeatureState$ParamsDefaultEntryHolder;->defaultEntry:Landroid/net/connectivity/com/google/protobuf/MapEntryLite;

    .line 308
    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 1

    .line 306
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
