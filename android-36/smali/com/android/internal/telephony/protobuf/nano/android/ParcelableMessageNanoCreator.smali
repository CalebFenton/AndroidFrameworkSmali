.class public final Lcom/android/internal/telephony/protobuf/nano/android/ParcelableMessageNanoCreator;
.super Ljava/lang/Object;
.source "ParcelableMessageNanoCreator.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/android/internal/telephony/protobuf/nano/MessageNano;",
        ">",
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "TT;>;"
    }
.end annotation


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
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lcom/android/internal/telephony/protobuf/nano/android/ParcelableMessageNanoCreator;->mClazz:Ljava/lang/Class;

    return-void
.end method

.method static blacklist writeToParcel(Ljava/lang/Class;Lcom/android/internal/telephony/protobuf/nano/MessageNano;Landroid/os/Parcel;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/android/internal/telephony/protobuf/nano/MessageNano;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lcom/android/internal/telephony/protobuf/nano/MessageNano;",
            "Landroid/os/Parcel;",
            ")V"
        }
    .end annotation

    .line 94
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 95
    invoke-static {p1}, Lcom/android/internal/telephony/protobuf/nano/MessageNano;->toByteArray(Lcom/android/internal/telephony/protobuf/nano/MessageNano;)[B

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/os/Parcel;->writeByteArray([B)V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Lcom/android/internal/telephony/protobuf/nano/MessageNano;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            ")TT;"
        }
    .end annotation

    .line 56
    const-string p0, "Exception trying to create proto from parcel"

    const-string v0, "PMNCreator"

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 57
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p1

    const/4 v2, 0x0

    .line 64
    :try_start_d
    const-class v3, Lcom/android/internal/telephony/protobuf/nano/android/ParcelableMessageNanoCreator;

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v1, v4, v3}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v1

    const-class v3, Lcom/android/internal/telephony/protobuf/nano/MessageNano;

    .line 65
    invoke-virtual {v1, v3}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v1

    .line 66
    new-array v3, v4, [Ljava/lang/Class;

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 67
    check-cast v1, Lcom/android/internal/telephony/protobuf/nano/MessageNano;
    :try_end_2a
    .catch Ljava/lang/ClassNotFoundException; {:try_start_d .. :try_end_2a} :catch_4a
    .catch Ljava/lang/NoSuchMethodException; {:try_start_d .. :try_end_2a} :catch_48
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_d .. :try_end_2a} :catch_46
    .catch Ljava/lang/IllegalAccessException; {:try_start_d .. :try_end_2a} :catch_44
    .catch Ljava/lang/InstantiationException; {:try_start_d .. :try_end_2a} :catch_42
    .catch Lcom/android/internal/telephony/protobuf/nano/InvalidProtocolBufferNanoException; {:try_start_d .. :try_end_2a} :catch_40

    .line 68
    :try_start_2a
    invoke-static {v1, p1}, Lcom/android/internal/telephony/protobuf/nano/MessageNano;->mergeFrom(Lcom/android/internal/telephony/protobuf/nano/MessageNano;[B)Lcom/android/internal/telephony/protobuf/nano/MessageNano;
    :try_end_2d
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2a .. :try_end_2d} :catch_3d
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2a .. :try_end_2d} :catch_3a
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2a .. :try_end_2d} :catch_37
    .catch Ljava/lang/IllegalAccessException; {:try_start_2a .. :try_end_2d} :catch_34
    .catch Ljava/lang/InstantiationException; {:try_start_2a .. :try_end_2d} :catch_31
    .catch Lcom/android/internal/telephony/protobuf/nano/InvalidProtocolBufferNanoException; {:try_start_2a .. :try_end_2d} :catch_2e

    return-object v1

    :catch_2e
    move-exception p1

    move-object v2, v1

    goto :goto_4c

    :catch_31
    move-exception p1

    move-object v2, v1

    goto :goto_50

    :catch_34
    move-exception p1

    move-object v2, v1

    goto :goto_54

    :catch_37
    move-exception p1

    move-object v2, v1

    goto :goto_58

    :catch_3a
    move-exception p1

    move-object v2, v1

    goto :goto_5c

    :catch_3d
    move-exception p1

    move-object v2, v1

    goto :goto_60

    :catch_40
    move-exception p1

    goto :goto_4c

    :catch_42
    move-exception p1

    goto :goto_50

    :catch_44
    move-exception p1

    goto :goto_54

    :catch_46
    move-exception p1

    goto :goto_58

    :catch_48
    move-exception p1

    goto :goto_5c

    :catch_4a
    move-exception p1

    goto :goto_60

    .line 80
    :goto_4c
    invoke-static {v0, p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_63

    .line 78
    :goto_50
    invoke-static {v0, p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_63

    .line 76
    :goto_54
    invoke-static {v0, p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_63

    .line 74
    :goto_58
    invoke-static {v0, p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_63

    .line 72
    :goto_5c
    invoke-static {v0, p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_63

    .line 70
    :goto_60
    invoke-static {v0, p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_63
    return-object v2
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
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/protobuf/nano/android/ParcelableMessageNanoCreator;->createFromParcel(Landroid/os/Parcel;)Lcom/android/internal/telephony/protobuf/nano/MessageNano;

    move-result-object p0

    return-object p0
.end method

.method public blacklist newArray(I)[Lcom/android/internal/telephony/protobuf/nano/MessageNano;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)[TT;"
        }
    .end annotation

    .line 89
    iget-object p0, p0, Lcom/android/internal/telephony/protobuf/nano/android/ParcelableMessageNanoCreator;->mClazz:Ljava/lang/Class;

    invoke-static {p0, p1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lcom/android/internal/telephony/protobuf/nano/MessageNano;

    return-object p0
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
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/protobuf/nano/android/ParcelableMessageNanoCreator;->newArray(I)[Lcom/android/internal/telephony/protobuf/nano/MessageNano;

    move-result-object p0

    return-object p0
.end method
