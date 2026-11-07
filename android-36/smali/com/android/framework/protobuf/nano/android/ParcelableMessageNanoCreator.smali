.class public final Lcom/android/framework/protobuf/nano/android/ParcelableMessageNanoCreator;
.super Ljava/lang/Object;
.source "ParcelableMessageNanoCreator.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/android/framework/protobuf/nano/MessageNano;",
        ">",
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "PMNCreator"


# instance fields
.field private final blacklist mClazz:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor blacklist <init>(Ljava/lang/Class;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TT;>;)V"
        }
    .end annotation

    .line 49
    .local p0, "this":Lcom/android/framework/protobuf/nano/android/ParcelableMessageNanoCreator;, "Lcom/android/framework/protobuf/nano/android/ParcelableMessageNanoCreator<TT;>;"
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lcom/android/framework/protobuf/nano/android/ParcelableMessageNanoCreator;->mClazz:Ljava/lang/Class;

    .line 51
    return-void
.end method

.method static blacklist writeToParcel(Ljava/lang/Class;Lcom/android/framework/protobuf/nano/MessageNano;Landroid/os/Parcel;)V
    .registers 4
    .param p1, "message"    # Lcom/android/framework/protobuf/nano/MessageNano;
    .param p2, "out"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/android/framework/protobuf/nano/MessageNano;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lcom/android/framework/protobuf/nano/MessageNano;",
            "Landroid/os/Parcel;",
            ")V"
        }
    .end annotation

    .line 94
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 95
    invoke-static {p1}, Lcom/android/framework/protobuf/nano/MessageNano;->toByteArray(Lcom/android/framework/protobuf/nano/MessageNano;)[B

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 96
    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Lcom/android/framework/protobuf/nano/MessageNano;
    .registers 10
    .param p1, "in"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            ")TT;"
        }
    .end annotation

    .line 56
    .local p0, "this":Lcom/android/framework/protobuf/nano/android/ParcelableMessageNanoCreator;, "Lcom/android/framework/protobuf/nano/android/ParcelableMessageNanoCreator<TT;>;"
    const-string v0, "Exception trying to create proto from parcel"

    const-string v1, "PMNCreator"

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 57
    .local v2, "className":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3

    .line 59
    .local v3, "data":[B
    const/4 v4, 0x0

    .line 63
    .local v4, "proto":Lcom/android/framework/protobuf/nano/MessageNano;, "TT;"
    nop

    .line 64
    :try_start_e
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v2, v6, v5}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v5

    const-class v7, Lcom/android/framework/protobuf/nano/MessageNano;

    .line 65
    invoke-virtual {v5, v7}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v5

    .line 66
    .local v5, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-array v7, v6, [Ljava/lang/Class;

    invoke-virtual {v5, v7}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v7

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v7, v6}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 67
    .local v6, "instance":Ljava/lang/Object;
    move-object v7, v6

    check-cast v7, Lcom/android/framework/protobuf/nano/MessageNano;

    move-object v4, v7

    .line 68
    invoke-static {v4, v3}, Lcom/android/framework/protobuf/nano/MessageNano;->mergeFrom(Lcom/android/framework/protobuf/nano/MessageNano;[B)Lcom/android/framework/protobuf/nano/MessageNano;
    :try_end_34
    .catch Ljava/lang/ClassNotFoundException; {:try_start_e .. :try_end_34} :catch_4f
    .catch Ljava/lang/NoSuchMethodException; {:try_start_e .. :try_end_34} :catch_4a
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_e .. :try_end_34} :catch_45
    .catch Ljava/lang/IllegalAccessException; {:try_start_e .. :try_end_34} :catch_40
    .catch Ljava/lang/InstantiationException; {:try_start_e .. :try_end_34} :catch_3b
    .catch Lcom/android/framework/protobuf/nano/InvalidProtocolBufferNanoException; {:try_start_e .. :try_end_34} :catch_36

    .line 81
    nop

    .end local v5    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v6    # "instance":Ljava/lang/Object;
    goto :goto_54

    .line 79
    :catch_36
    move-exception v5

    .line 80
    .local v5, "e":Lcom/android/framework/protobuf/nano/InvalidProtocolBufferNanoException;
    invoke-static {v1, v0, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_54

    .line 77
    .end local v5    # "e":Lcom/android/framework/protobuf/nano/InvalidProtocolBufferNanoException;
    :catch_3b
    move-exception v5

    .line 78
    .local v5, "e":Ljava/lang/InstantiationException;
    invoke-static {v1, v0, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v5    # "e":Ljava/lang/InstantiationException;
    goto :goto_53

    .line 75
    :catch_40
    move-exception v5

    .line 76
    .local v5, "e":Ljava/lang/IllegalAccessException;
    invoke-static {v1, v0, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v5    # "e":Ljava/lang/IllegalAccessException;
    goto :goto_53

    .line 73
    :catch_45
    move-exception v5

    .line 74
    .local v5, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-static {v1, v0, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v5    # "e":Ljava/lang/reflect/InvocationTargetException;
    goto :goto_53

    .line 71
    :catch_4a
    move-exception v5

    .line 72
    .local v5, "e":Ljava/lang/NoSuchMethodException;
    invoke-static {v1, v0, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v5    # "e":Ljava/lang/NoSuchMethodException;
    goto :goto_53

    .line 69
    :catch_4f
    move-exception v5

    .line 70
    .local v5, "e":Ljava/lang/ClassNotFoundException;
    invoke-static {v1, v0, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 81
    .end local v5    # "e":Ljava/lang/ClassNotFoundException;
    :goto_53
    nop

    .line 83
    :goto_54
    return-object v4
.end method

.method public bridge synthetic whitelist createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 43
    .local p0, "this":Lcom/android/framework/protobuf/nano/android/ParcelableMessageNanoCreator;, "Lcom/android/framework/protobuf/nano/android/ParcelableMessageNanoCreator<TT;>;"
    invoke-virtual {p0, p1}, Lcom/android/framework/protobuf/nano/android/ParcelableMessageNanoCreator;->createFromParcel(Landroid/os/Parcel;)Lcom/android/framework/protobuf/nano/MessageNano;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Lcom/android/framework/protobuf/nano/MessageNano;
    .registers 3
    .param p1, "i"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)[TT;"
        }
    .end annotation

    .line 89
    .local p0, "this":Lcom/android/framework/protobuf/nano/android/ParcelableMessageNanoCreator;, "Lcom/android/framework/protobuf/nano/android/ParcelableMessageNanoCreator<TT;>;"
    iget-object v0, p0, Lcom/android/framework/protobuf/nano/android/ParcelableMessageNanoCreator;->mClazz:Ljava/lang/Class;

    invoke-static {v0, p1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/framework/protobuf/nano/MessageNano;

    return-object v0
.end method

.method public bridge synthetic whitelist newArray(I)[Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 43
    .local p0, "this":Lcom/android/framework/protobuf/nano/android/ParcelableMessageNanoCreator;, "Lcom/android/framework/protobuf/nano/android/ParcelableMessageNanoCreator<TT;>;"
    invoke-virtual {p0, p1}, Lcom/android/framework/protobuf/nano/android/ParcelableMessageNanoCreator;->newArray(I)[Lcom/android/framework/protobuf/nano/MessageNano;

    move-result-object p1

    return-object p1
.end method
