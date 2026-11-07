.class Landroid/net/connectivity/com/google/protobuf/MapEntryLite$Metadata;
.super Ljava/lang/Object;
.source "MapEntryLite.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/connectivity/com/google/protobuf/MapEntryLite;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Metadata"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final blacklist defaultKey:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field

.field public final blacklist defaultValue:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field

.field public final blacklist keyType:Landroid/net/connectivity/com/google/protobuf/WireFormat$FieldType;

.field public final blacklist valueType:Landroid/net/connectivity/com/google/protobuf/WireFormat$FieldType;


# direct methods
.method public constructor blacklist <init>(Landroid/net/connectivity/com/google/protobuf/WireFormat$FieldType;Ljava/lang/Object;Landroid/net/connectivity/com/google/protobuf/WireFormat$FieldType;Ljava/lang/Object;)V
    .registers 5
    .param p1, "keyType"    # Landroid/net/connectivity/com/google/protobuf/WireFormat$FieldType;
    .param p3, "valueType"    # Landroid/net/connectivity/com/google/protobuf/WireFormat$FieldType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/connectivity/com/google/protobuf/WireFormat$FieldType;",
            "TK;",
            "Landroid/net/connectivity/com/google/protobuf/WireFormat$FieldType;",
            "TV;)V"
        }
    .end annotation

    .line 57
    .local p0, "this":Landroid/net/connectivity/com/google/protobuf/MapEntryLite$Metadata;, "Landroid/net/connectivity/com/google/protobuf/MapEntryLite$Metadata<TK;TV;>;"
    .local p2, "defaultKey":Ljava/lang/Object;, "TK;"
    .local p4, "defaultValue":Ljava/lang/Object;, "TV;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p1, p0, Landroid/net/connectivity/com/google/protobuf/MapEntryLite$Metadata;->keyType:Landroid/net/connectivity/com/google/protobuf/WireFormat$FieldType;

    .line 59
    iput-object p2, p0, Landroid/net/connectivity/com/google/protobuf/MapEntryLite$Metadata;->defaultKey:Ljava/lang/Object;

    .line 60
    iput-object p3, p0, Landroid/net/connectivity/com/google/protobuf/MapEntryLite$Metadata;->valueType:Landroid/net/connectivity/com/google/protobuf/WireFormat$FieldType;

    .line 61
    iput-object p4, p0, Landroid/net/connectivity/com/google/protobuf/MapEntryLite$Metadata;->defaultValue:Ljava/lang/Object;

    .line 62
    return-void
.end method
