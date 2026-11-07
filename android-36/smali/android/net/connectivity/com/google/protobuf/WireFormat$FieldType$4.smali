.class final enum Landroid/net/connectivity/com/google/protobuf/WireFormat$FieldType$4;
.super Landroid/net/connectivity/com/google/protobuf/WireFormat$FieldType;
.source "WireFormat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/connectivity/com/google/protobuf/WireFormat$FieldType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4010
    name = null
.end annotation


# direct methods
.method constructor blacklist <init>(Ljava/lang/String;ILandroid/net/connectivity/com/google/protobuf/WireFormat$JavaType;I)V
    .registers 11
    .param p3, "javaType"    # Landroid/net/connectivity/com/google/protobuf/WireFormat$JavaType;
    .param p4, "wireType"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x10,
            0x10
        }
        names = {
            null,
            null,
            null,
            null
        }
    .end annotation

    .line 138
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    .end local p3    # "javaType":Landroid/net/connectivity/com/google/protobuf/WireFormat$JavaType;
    .end local p4    # "wireType":I
    .local v3, "javaType":Landroid/net/connectivity/com/google/protobuf/WireFormat$JavaType;
    .local v4, "wireType":I
    invoke-direct/range {v0 .. v5}, Landroid/net/connectivity/com/google/protobuf/WireFormat$FieldType;-><init>(Ljava/lang/String;ILandroid/net/connectivity/com/google/protobuf/WireFormat$JavaType;ILandroid/net/connectivity/com/google/protobuf/WireFormat$1;)V

    return-void
.end method


# virtual methods
.method public blacklist isPackable()Z
    .registers 2

    .line 141
    const/4 v0, 0x0

    return v0
.end method
