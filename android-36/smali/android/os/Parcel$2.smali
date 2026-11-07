.class Landroid/os/Parcel$2;
.super Ljava/io/ObjectInputStream;
.source "Parcel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/os/Parcel;->readSerializableInternal(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist val$loader:Ljava/lang/ClassLoader;


# direct methods
.method constructor blacklist <init>(Landroid/os/Parcel;Ljava/io/InputStream;Ljava/lang/ClassLoader;)V
    .registers 4
    .param p1, "this$0"    # Landroid/os/Parcel;
    .param p2, "arg1"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x1010
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5495
    iput-object p3, p0, Landroid/os/Parcel$2;->val$loader:Ljava/lang/ClassLoader;

    invoke-direct {p0, p2}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    return-void
.end method


# virtual methods
.method protected whitelist test-api resolveClass(Ljava/io/ObjectStreamClass;)Ljava/lang/Class;
    .registers 5
    .param p1, "osClass"    # Ljava/io/ObjectStreamClass;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/ObjectStreamClass;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 5500
    iget-object v0, p0, Landroid/os/Parcel$2;->val$loader:Ljava/lang/ClassLoader;

    if-eqz v0, :cond_16

    .line 5501
    invoke-virtual {p1}, Ljava/io/ObjectStreamClass;->getName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Landroid/os/Parcel$2;->val$loader:Ljava/lang/ClassLoader;

    invoke-static {v0, v1, v2}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    .line 5502
    .local v0, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    return-object v1

    .line 5504
    .end local v0    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_16
    invoke-super {p0, p1}, Ljava/io/ObjectInputStream;->resolveClass(Ljava/io/ObjectStreamClass;)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method
