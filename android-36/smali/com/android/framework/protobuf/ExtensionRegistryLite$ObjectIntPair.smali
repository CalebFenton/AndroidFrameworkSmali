.class final Lcom/android/framework/protobuf/ExtensionRegistryLite$ObjectIntPair;
.super Ljava/lang/Object;
.source "ExtensionRegistryLite.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/framework/protobuf/ExtensionRegistryLite;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ObjectIntPair"
.end annotation


# instance fields
.field private final blacklist number:I

.field private final blacklist object:Ljava/lang/Object;


# direct methods
.method constructor blacklist <init>(Ljava/lang/Object;I)V
    .registers 3
    .param p1, "object"    # Ljava/lang/Object;
    .param p2, "number"    # I

    .line 219
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 220
    iput-object p1, p0, Lcom/android/framework/protobuf/ExtensionRegistryLite$ObjectIntPair;->object:Ljava/lang/Object;

    .line 221
    iput p2, p0, Lcom/android/framework/protobuf/ExtensionRegistryLite$ObjectIntPair;->number:I

    .line 222
    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "obj"    # Ljava/lang/Object;

    .line 231
    instance-of v0, p1, Lcom/android/framework/protobuf/ExtensionRegistryLite$ObjectIntPair;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 232
    return v1

    .line 234
    :cond_6
    move-object v0, p1

    check-cast v0, Lcom/android/framework/protobuf/ExtensionRegistryLite$ObjectIntPair;

    .line 235
    .local v0, "other":Lcom/android/framework/protobuf/ExtensionRegistryLite$ObjectIntPair;
    iget-object v2, p0, Lcom/android/framework/protobuf/ExtensionRegistryLite$ObjectIntPair;->object:Ljava/lang/Object;

    iget-object v3, v0, Lcom/android/framework/protobuf/ExtensionRegistryLite$ObjectIntPair;->object:Ljava/lang/Object;

    if-ne v2, v3, :cond_16

    iget v2, p0, Lcom/android/framework/protobuf/ExtensionRegistryLite$ObjectIntPair;->number:I

    iget v3, v0, Lcom/android/framework/protobuf/ExtensionRegistryLite$ObjectIntPair;->number:I

    if-ne v2, v3, :cond_16

    const/4 v1, 0x1

    :cond_16
    return v1
.end method

.method public whitelist test-api hashCode()I
    .registers 3

    .line 226
    iget-object v0, p0, Lcom/android/framework/protobuf/ExtensionRegistryLite$ObjectIntPair;->object:Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    const v1, 0xffff

    mul-int/2addr v0, v1

    iget v1, p0, Lcom/android/framework/protobuf/ExtensionRegistryLite$ObjectIntPair;->number:I

    add-int/2addr v0, v1

    return v0
.end method
