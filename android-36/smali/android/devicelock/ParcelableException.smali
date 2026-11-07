.class public final Landroid/devicelock/ParcelableException;
.super Ljava/lang/Exception;
.source "ParcelableException.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/devicelock/ParcelableException;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic blacklist -$$Nest$smreadFromParcel(Landroid/os/Parcel;)Ljava/lang/Exception;
    .registers 1

    invoke-static {p0}, Landroid/devicelock/ParcelableException;->readFromParcel(Landroid/os/Parcel;)Ljava/lang/Exception;

    move-result-object p0

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 65
    new-instance v0, Landroid/devicelock/ParcelableException$1;

    invoke-direct {v0}, Landroid/devicelock/ParcelableException$1;-><init>()V

    sput-object v0, Landroid/devicelock/ParcelableException;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/Exception;)V
    .registers 2
    .param p1, "t"    # Ljava/lang/Exception;

    .line 30
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    .line 31
    return-void
.end method

.method private static blacklist readFromParcel(Landroid/os/Parcel;)Ljava/lang/Exception;
    .registers 7
    .param p0, "in"    # Landroid/os/Parcel;

    .line 34
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 35
    .local v0, "name":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 37
    .local v1, "msg":Ljava/lang/String;
    :try_start_8
    const-class v2, Landroid/os/Parcelable;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v0, v3, v2}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v2

    .line 38
    .local v2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v4, Ljava/lang/Exception;

    invoke-virtual {v4, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_31

    .line 39
    new-array v3, v3, [Ljava/lang/Class;

    const-class v4, Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v3

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Exception;
    :try_end_30
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_8 .. :try_end_30} :catch_32

    return-object v3

    .line 43
    .end local v2    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_31
    goto :goto_33

    .line 41
    :catch_32
    move-exception v2

    .line 44
    :goto_33
    new-instance v2, Ljava/lang/Exception;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    return-object v2
.end method

.method private static blacklist writeToParcel(Landroid/os/Parcel;Ljava/lang/Throwable;)V
    .registers 3
    .param p0, "out"    # Landroid/os/Parcel;
    .param p1, "t"    # Ljava/lang/Throwable;

    .line 48
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 50
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 54
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getException()Ljava/lang/Exception;
    .registers 2

    .line 81
    invoke-virtual {p0}, Landroid/devicelock/ParcelableException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    check-cast v0, Ljava/lang/Exception;

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 59
    invoke-virtual {p0}, Landroid/devicelock/ParcelableException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/devicelock/ParcelableException;->writeToParcel(Landroid/os/Parcel;Ljava/lang/Throwable;)V

    .line 60
    return-void
.end method
