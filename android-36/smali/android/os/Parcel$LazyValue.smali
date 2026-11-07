.class final Landroid/os/Parcel$LazyValue;
.super Ljava/lang/Object;
.source "Parcel.java"

# interfaces
.implements Ljava/util/function/BiFunction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/Parcel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "LazyValue"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/function/BiFunction<",
        "Ljava/lang/Class<",
        "*>;[",
        "Ljava/lang/Class<",
        "*>;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field private final blacklist mLength:I

.field private final blacklist mLoaderProvider:Landroid/os/Parcel$ClassLoaderProvider;

.field private blacklist mObject:Ljava/lang/Object;

.field private final blacklist mPosition:I

.field private volatile blacklist mSource:Landroid/os/Parcel;

.field private final blacklist mType:I


# direct methods
.method constructor blacklist <init>(Landroid/os/Parcel;IIILandroid/os/Parcel$ClassLoaderProvider;)V
    .registers 7
    .param p1, "source"    # Landroid/os/Parcel;
    .param p2, "position"    # I
    .param p3, "length"    # I
    .param p4, "type"    # I
    .param p5, "loaderProvider"    # Landroid/os/Parcel$ClassLoaderProvider;

    .line 4793
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4794
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Parcel;

    iput-object v0, p0, Landroid/os/Parcel$LazyValue;->mSource:Landroid/os/Parcel;

    .line 4795
    iput p2, p0, Landroid/os/Parcel$LazyValue;->mPosition:I

    .line 4796
    iput p3, p0, Landroid/os/Parcel$LazyValue;->mLength:I

    .line 4797
    iput p4, p0, Landroid/os/Parcel$LazyValue;->mType:I

    .line 4798
    iput-object p5, p0, Landroid/os/Parcel$LazyValue;->mLoaderProvider:Landroid/os/Parcel$ClassLoaderProvider;

    .line 4799
    return-void
.end method


# virtual methods
.method public blacklist apply(Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 4803
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p2, "itemTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    iget-object v0, p0, Landroid/os/Parcel$LazyValue;->mSource:Landroid/os/Parcel;

    .line 4804
    .local v0, "source":Landroid/os/Parcel;
    if-eqz v0, :cond_31

    .line 4805
    monitor-enter v0

    .line 4807
    :try_start_5
    iget-object v1, p0, Landroid/os/Parcel$LazyValue;->mSource:Landroid/os/Parcel;

    if-eqz v1, :cond_2c

    .line 4808
    invoke-virtual {v0}, Landroid/os/Parcel;->dataPosition()I

    move-result v1
    :try_end_d
    .catchall {:try_start_5 .. :try_end_d} :catchall_2e

    .line 4810
    .local v1, "restore":I
    :try_start_d
    iget v2, p0, Landroid/os/Parcel$LazyValue;->mPosition:I

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 4811
    iget-object v2, p0, Landroid/os/Parcel$LazyValue;->mLoaderProvider:Landroid/os/Parcel$ClassLoaderProvider;

    invoke-interface {v2}, Landroid/os/Parcel$ClassLoaderProvider;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-static {v0, v2, p1, p2}, Landroid/os/Parcel;->-$$Nest$mreadValue(Landroid/os/Parcel;Ljava/lang/ClassLoader;Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, p0, Landroid/os/Parcel$LazyValue;->mObject:Ljava/lang/Object;
    :try_end_1e
    .catchall {:try_start_d .. :try_end_1e} :catchall_26

    .line 4814
    :try_start_1e
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 4815
    nop

    .line 4816
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/os/Parcel$LazyValue;->mSource:Landroid/os/Parcel;

    goto :goto_2c

    .line 4814
    :catchall_26
    move-exception v2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 4815
    nop

    .end local v0    # "source":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/os/Parcel$LazyValue;
    .end local p1    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local p2    # "itemTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    throw v2

    .line 4818
    .end local v1    # "restore":I
    .restart local v0    # "source":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/os/Parcel$LazyValue;
    .restart local p1    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local p2    # "itemTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :cond_2c
    :goto_2c
    monitor-exit v0

    goto :goto_31

    :catchall_2e
    move-exception v1

    monitor-exit v0
    :try_end_30
    .catchall {:try_start_1e .. :try_end_30} :catchall_2e

    throw v1

    .line 4820
    :cond_31
    :goto_31
    iget-object v1, p0, Landroid/os/Parcel$LazyValue;->mObject:Ljava/lang/Object;

    return-object v1
.end method

.method public bridge synthetic whitelist test-api apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 4764
    check-cast p1, Ljava/lang/Class;

    check-cast p2, [Ljava/lang/Class;

    invoke-virtual {p0, p1, p2}, Landroid/os/Parcel$LazyValue;->apply(Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 8
    .param p1, "other"    # Ljava/lang/Object;

    .line 4870
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 4871
    return v0

    .line 4873
    :cond_4
    instance-of v1, p1, Landroid/os/Parcel$LazyValue;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    .line 4874
    return v2

    .line 4876
    :cond_a
    move-object v1, p1

    check-cast v1, Landroid/os/Parcel$LazyValue;

    .line 4878
    .local v1, "value":Landroid/os/Parcel$LazyValue;
    iget-object v3, p0, Landroid/os/Parcel$LazyValue;->mSource:Landroid/os/Parcel;

    .line 4879
    .local v3, "source":Landroid/os/Parcel;
    iget-object v4, v1, Landroid/os/Parcel$LazyValue;->mSource:Landroid/os/Parcel;

    .line 4880
    .local v4, "otherSource":Landroid/os/Parcel;
    if-nez v3, :cond_15

    move v5, v0

    goto :goto_16

    :cond_15
    move v5, v2

    :goto_16
    if-nez v4, :cond_19

    goto :goto_1a

    :cond_19
    move v0, v2

    :goto_1a
    if-eq v5, v0, :cond_1d

    .line 4881
    return v2

    .line 4884
    :cond_1d
    if-nez v3, :cond_28

    .line 4888
    iget-object v0, p0, Landroid/os/Parcel$LazyValue;->mObject:Ljava/lang/Object;

    iget-object v2, v1, Landroid/os/Parcel$LazyValue;->mObject:Ljava/lang/Object;

    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 4891
    :cond_28
    iget-object v0, p0, Landroid/os/Parcel$LazyValue;->mLoaderProvider:Landroid/os/Parcel$ClassLoaderProvider;

    invoke-interface {v0}, Landroid/os/Parcel$ClassLoaderProvider;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    iget-object v5, v1, Landroid/os/Parcel$LazyValue;->mLoaderProvider:Landroid/os/Parcel$ClassLoaderProvider;

    .line 4892
    invoke-interface {v5}, Landroid/os/Parcel$ClassLoaderProvider;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    .line 4891
    invoke-static {v0, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3b

    .line 4893
    return v2

    .line 4896
    :cond_3b
    iget v0, p0, Landroid/os/Parcel$LazyValue;->mType:I

    iget v5, v1, Landroid/os/Parcel$LazyValue;->mType:I

    if-ne v0, v5, :cond_53

    iget v0, p0, Landroid/os/Parcel$LazyValue;->mLength:I

    iget v5, v1, Landroid/os/Parcel$LazyValue;->mLength:I

    if-eq v0, v5, :cond_48

    goto :goto_53

    .line 4900
    :cond_48
    iget v0, p0, Landroid/os/Parcel$LazyValue;->mPosition:I

    iget v2, v1, Landroid/os/Parcel$LazyValue;->mPosition:I

    iget v5, p0, Landroid/os/Parcel$LazyValue;->mLength:I

    invoke-static {v3, v0, v4, v2, v5}, Landroid/os/Parcel;->compareData(Landroid/os/Parcel;ILandroid/os/Parcel;II)Z

    move-result v0

    return v0

    .line 4897
    :cond_53
    :goto_53
    return v2
.end method

.method public blacklist getClassLoader()Ljava/lang/ClassLoader;
    .registers 2

    .line 4853
    iget-object v0, p0, Landroid/os/Parcel$LazyValue;->mLoaderProvider:Landroid/os/Parcel$ClassLoaderProvider;

    invoke-interface {v0}, Landroid/os/Parcel$ClassLoaderProvider;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    return-object v0
.end method

.method public blacklist hasFileDescriptors()Z
    .registers 4

    .line 4838
    iget-object v0, p0, Landroid/os/Parcel$LazyValue;->mSource:Landroid/os/Parcel;

    .line 4839
    .local v0, "source":Landroid/os/Parcel;
    if-eqz v0, :cond_18

    .line 4840
    monitor-enter v0

    .line 4841
    :try_start_5
    iget-object v1, p0, Landroid/os/Parcel$LazyValue;->mSource:Landroid/os/Parcel;

    if-eqz v1, :cond_13

    .line 4842
    iget v1, p0, Landroid/os/Parcel$LazyValue;->mPosition:I

    iget v2, p0, Landroid/os/Parcel$LazyValue;->mLength:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->hasFileDescriptors(II)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 4844
    :cond_13
    monitor-exit v0

    goto :goto_18

    :catchall_15
    move-exception v1

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_5 .. :try_end_17} :catchall_15

    throw v1

    .line 4847
    :cond_18
    :goto_18
    iget-object v1, p0, Landroid/os/Parcel$LazyValue;->mObject:Ljava/lang/Object;

    invoke-static {v1}, Landroid/os/Parcel;->hasFileDescriptors(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public whitelist test-api hashCode()I
    .registers 6

    .line 4906
    iget-object v0, p0, Landroid/os/Parcel$LazyValue;->mSource:Landroid/os/Parcel;

    if-nez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iget-object v1, p0, Landroid/os/Parcel$LazyValue;->mObject:Ljava/lang/Object;

    iget-object v2, p0, Landroid/os/Parcel$LazyValue;->mLoaderProvider:Landroid/os/Parcel$ClassLoaderProvider;

    invoke-interface {v2}, Landroid/os/Parcel$ClassLoaderProvider;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    iget v3, p0, Landroid/os/Parcel$LazyValue;->mType:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v4, p0, Landroid/os/Parcel$LazyValue;->mLength:I

    .line 4907
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/Object;

    move-result-object v0

    .line 4906
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 4858
    iget-object v0, p0, Landroid/os/Parcel$LazyValue;->mSource:Landroid/os/Parcel;

    const-string v1, "Supplier{"

    if-eqz v0, :cond_3c

    .line 4859
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/os/Parcel$LazyValue;->mType:I

    invoke-static {v1}, Landroid/os/Parcel;->-$$Nest$smvalueTypeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/os/Parcel$LazyValue;->mPosition:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "+"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/os/Parcel$LazyValue;->mLength:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_56

    .line 4860
    :cond_3c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/os/Parcel$LazyValue;->mObject:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4858
    :goto_56
    return-object v0
.end method

.method public blacklist writeToParcel(Landroid/os/Parcel;)V
    .registers 5
    .param p1, "out"    # Landroid/os/Parcel;

    .line 4824
    iget-object v0, p0, Landroid/os/Parcel$LazyValue;->mSource:Landroid/os/Parcel;

    .line 4825
    .local v0, "source":Landroid/os/Parcel;
    if-eqz v0, :cond_17

    .line 4826
    monitor-enter v0

    .line 4827
    :try_start_5
    iget-object v1, p0, Landroid/os/Parcel$LazyValue;->mSource:Landroid/os/Parcel;

    if-eqz v1, :cond_12

    .line 4828
    iget v1, p0, Landroid/os/Parcel$LazyValue;->mPosition:I

    iget v2, p0, Landroid/os/Parcel$LazyValue;->mLength:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Parcel;->appendFrom(Landroid/os/Parcel;II)V

    .line 4829
    monitor-exit v0

    return-void

    .line 4831
    :cond_12
    monitor-exit v0

    goto :goto_17

    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_5 .. :try_end_16} :catchall_14

    throw v1

    .line 4834
    :cond_17
    :goto_17
    iget-object v1, p0, Landroid/os/Parcel$LazyValue;->mObject:Ljava/lang/Object;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 4835
    return-void
.end method
