.class public final Landroid/updatabledriver/UpdatableDriverProto$Denylist$Builder;
.super Lcom/android/framework/protobuf/GeneratedMessageLite$Builder;
.source "UpdatableDriverProto.java"

# interfaces
.implements Landroid/updatabledriver/UpdatableDriverProto$DenylistOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/updatabledriver/UpdatableDriverProto$Denylist;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/framework/protobuf/GeneratedMessageLite$Builder<",
        "Landroid/updatabledriver/UpdatableDriverProto$Denylist;",
        "Landroid/updatabledriver/UpdatableDriverProto$Denylist$Builder;",
        ">;",
        "Landroid/updatabledriver/UpdatableDriverProto$DenylistOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor blacklist <init>()V
    .registers 2

    .line 282
    # getter for: Landroid/updatabledriver/UpdatableDriverProto$Denylist;->DEFAULT_INSTANCE:Landroid/updatabledriver/UpdatableDriverProto$Denylist;
    invoke-static {}, Landroid/updatabledriver/UpdatableDriverProto$Denylist;->access$000()Landroid/updatabledriver/UpdatableDriverProto$Denylist;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/framework/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/android/framework/protobuf/GeneratedMessageLite;)V

    .line 283
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/updatabledriver/UpdatableDriverProto$1;)V
    .registers 2
    .param p1, "x0"    # Landroid/updatabledriver/UpdatableDriverProto$1;

    .line 275
    invoke-direct {p0}, Landroid/updatabledriver/UpdatableDriverProto$Denylist$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist addAllPackageNames(Ljava/lang/Iterable;)Landroid/updatabledriver/UpdatableDriverProto$Denylist$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/updatabledriver/UpdatableDriverProto$Denylist$Builder;"
        }
    .end annotation

    .line 389
    .local p1, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Ljava/lang/String;>;"
    invoke-virtual {p0}, Landroid/updatabledriver/UpdatableDriverProto$Denylist$Builder;->copyOnWrite()V

    .line 390
    iget-object v0, p0, Landroid/updatabledriver/UpdatableDriverProto$Denylist$Builder;->instance:Lcom/android/framework/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/updatabledriver/UpdatableDriverProto$Denylist;

    # invokes: Landroid/updatabledriver/UpdatableDriverProto$Denylist;->addAllPackageNames(Ljava/lang/Iterable;)V
    invoke-static {v0, p1}, Landroid/updatabledriver/UpdatableDriverProto$Denylist;->access$500(Landroid/updatabledriver/UpdatableDriverProto$Denylist;Ljava/lang/Iterable;)V

    .line 391
    return-object p0
.end method

.method public blacklist addPackageNames(Ljava/lang/String;)Landroid/updatabledriver/UpdatableDriverProto$Denylist$Builder;
    .registers 3
    .param p1, "value"    # Ljava/lang/String;

    .line 378
    invoke-virtual {p0}, Landroid/updatabledriver/UpdatableDriverProto$Denylist$Builder;->copyOnWrite()V

    .line 379
    iget-object v0, p0, Landroid/updatabledriver/UpdatableDriverProto$Denylist$Builder;->instance:Lcom/android/framework/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/updatabledriver/UpdatableDriverProto$Denylist;

    # invokes: Landroid/updatabledriver/UpdatableDriverProto$Denylist;->addPackageNames(Ljava/lang/String;)V
    invoke-static {v0, p1}, Landroid/updatabledriver/UpdatableDriverProto$Denylist;->access$400(Landroid/updatabledriver/UpdatableDriverProto$Denylist;Ljava/lang/String;)V

    .line 380
    return-object p0
.end method

.method public blacklist addPackageNamesBytes(Lcom/android/framework/protobuf/ByteString;)Landroid/updatabledriver/UpdatableDriverProto$Denylist$Builder;
    .registers 3
    .param p1, "value"    # Lcom/android/framework/protobuf/ByteString;

    .line 409
    invoke-virtual {p0}, Landroid/updatabledriver/UpdatableDriverProto$Denylist$Builder;->copyOnWrite()V

    .line 410
    iget-object v0, p0, Landroid/updatabledriver/UpdatableDriverProto$Denylist$Builder;->instance:Lcom/android/framework/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/updatabledriver/UpdatableDriverProto$Denylist;

    # invokes: Landroid/updatabledriver/UpdatableDriverProto$Denylist;->addPackageNamesBytes(Lcom/android/framework/protobuf/ByteString;)V
    invoke-static {v0, p1}, Landroid/updatabledriver/UpdatableDriverProto$Denylist;->access$700(Landroid/updatabledriver/UpdatableDriverProto$Denylist;Lcom/android/framework/protobuf/ByteString;)V

    .line 411
    return-object p0
.end method

.method public blacklist clearPackageNames()Landroid/updatabledriver/UpdatableDriverProto$Denylist$Builder;
    .registers 2

    .line 398
    invoke-virtual {p0}, Landroid/updatabledriver/UpdatableDriverProto$Denylist$Builder;->copyOnWrite()V

    .line 399
    iget-object v0, p0, Landroid/updatabledriver/UpdatableDriverProto$Denylist$Builder;->instance:Lcom/android/framework/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/updatabledriver/UpdatableDriverProto$Denylist;

    # invokes: Landroid/updatabledriver/UpdatableDriverProto$Denylist;->clearPackageNames()V
    invoke-static {v0}, Landroid/updatabledriver/UpdatableDriverProto$Denylist;->access$600(Landroid/updatabledriver/UpdatableDriverProto$Denylist;)V

    .line 400
    return-object p0
.end method

.method public blacklist clearVersionCode()Landroid/updatabledriver/UpdatableDriverProto$Denylist$Builder;
    .registers 2

    .line 317
    invoke-virtual {p0}, Landroid/updatabledriver/UpdatableDriverProto$Denylist$Builder;->copyOnWrite()V

    .line 318
    iget-object v0, p0, Landroid/updatabledriver/UpdatableDriverProto$Denylist$Builder;->instance:Lcom/android/framework/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/updatabledriver/UpdatableDriverProto$Denylist;

    # invokes: Landroid/updatabledriver/UpdatableDriverProto$Denylist;->clearVersionCode()V
    invoke-static {v0}, Landroid/updatabledriver/UpdatableDriverProto$Denylist;->access$200(Landroid/updatabledriver/UpdatableDriverProto$Denylist;)V

    .line 319
    return-object p0
.end method

.method public blacklist getPackageNames(I)Ljava/lang/String;
    .registers 3
    .param p1, "index"    # I

    .line 347
    iget-object v0, p0, Landroid/updatabledriver/UpdatableDriverProto$Denylist$Builder;->instance:Lcom/android/framework/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/updatabledriver/UpdatableDriverProto$Denylist;

    invoke-virtual {v0, p1}, Landroid/updatabledriver/UpdatableDriverProto$Denylist;->getPackageNames(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getPackageNamesBytes(I)Lcom/android/framework/protobuf/ByteString;
    .registers 3
    .param p1, "index"    # I

    .line 357
    iget-object v0, p0, Landroid/updatabledriver/UpdatableDriverProto$Denylist$Builder;->instance:Lcom/android/framework/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/updatabledriver/UpdatableDriverProto$Denylist;

    invoke-virtual {v0, p1}, Landroid/updatabledriver/UpdatableDriverProto$Denylist;->getPackageNamesBytes(I)Lcom/android/framework/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getPackageNamesCount()I
    .registers 2

    .line 338
    iget-object v0, p0, Landroid/updatabledriver/UpdatableDriverProto$Denylist$Builder;->instance:Lcom/android/framework/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/updatabledriver/UpdatableDriverProto$Denylist;

    invoke-virtual {v0}, Landroid/updatabledriver/UpdatableDriverProto$Denylist;->getPackageNamesCount()I

    move-result v0

    return v0
.end method

.method public blacklist getPackageNamesList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 329
    iget-object v0, p0, Landroid/updatabledriver/UpdatableDriverProto$Denylist$Builder;->instance:Lcom/android/framework/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/updatabledriver/UpdatableDriverProto$Denylist;

    .line 330
    invoke-virtual {v0}, Landroid/updatabledriver/UpdatableDriverProto$Denylist;->getPackageNamesList()Ljava/util/List;

    move-result-object v0

    .line 329
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getVersionCode()J
    .registers 3

    .line 300
    iget-object v0, p0, Landroid/updatabledriver/UpdatableDriverProto$Denylist$Builder;->instance:Lcom/android/framework/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/updatabledriver/UpdatableDriverProto$Denylist;

    invoke-virtual {v0}, Landroid/updatabledriver/UpdatableDriverProto$Denylist;->getVersionCode()J

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist hasVersionCode()Z
    .registers 2

    .line 292
    iget-object v0, p0, Landroid/updatabledriver/UpdatableDriverProto$Denylist$Builder;->instance:Lcom/android/framework/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/updatabledriver/UpdatableDriverProto$Denylist;

    invoke-virtual {v0}, Landroid/updatabledriver/UpdatableDriverProto$Denylist;->hasVersionCode()Z

    move-result v0

    return v0
.end method

.method public blacklist setPackageNames(ILjava/lang/String;)Landroid/updatabledriver/UpdatableDriverProto$Denylist$Builder;
    .registers 4
    .param p1, "index"    # I
    .param p2, "value"    # Ljava/lang/String;

    .line 367
    invoke-virtual {p0}, Landroid/updatabledriver/UpdatableDriverProto$Denylist$Builder;->copyOnWrite()V

    .line 368
    iget-object v0, p0, Landroid/updatabledriver/UpdatableDriverProto$Denylist$Builder;->instance:Lcom/android/framework/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/updatabledriver/UpdatableDriverProto$Denylist;

    # invokes: Landroid/updatabledriver/UpdatableDriverProto$Denylist;->setPackageNames(ILjava/lang/String;)V
    invoke-static {v0, p1, p2}, Landroid/updatabledriver/UpdatableDriverProto$Denylist;->access$300(Landroid/updatabledriver/UpdatableDriverProto$Denylist;ILjava/lang/String;)V

    .line 369
    return-object p0
.end method

.method public blacklist setVersionCode(J)Landroid/updatabledriver/UpdatableDriverProto$Denylist$Builder;
    .registers 4
    .param p1, "value"    # J

    .line 308
    invoke-virtual {p0}, Landroid/updatabledriver/UpdatableDriverProto$Denylist$Builder;->copyOnWrite()V

    .line 309
    iget-object v0, p0, Landroid/updatabledriver/UpdatableDriverProto$Denylist$Builder;->instance:Lcom/android/framework/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/updatabledriver/UpdatableDriverProto$Denylist;

    # invokes: Landroid/updatabledriver/UpdatableDriverProto$Denylist;->setVersionCode(J)V
    invoke-static {v0, p1, p2}, Landroid/updatabledriver/UpdatableDriverProto$Denylist;->access$100(Landroid/updatabledriver/UpdatableDriverProto$Denylist;J)V

    .line 310
    return-object p0
.end method
