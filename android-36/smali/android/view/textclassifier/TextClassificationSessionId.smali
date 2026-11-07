.class public final Landroid/view/textclassifier/TextClassificationSessionId;
.super Ljava/lang/Object;
.source "TextClassificationSessionId.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/view/textclassifier/TextClassificationSessionId;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mToken:Landroid/os/IBinder;

.field private final greylist-max-o mValue:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 104
    new-instance v0, Landroid/view/textclassifier/TextClassificationSessionId$1;

    invoke-direct {v0}, Landroid/view/textclassifier/TextClassificationSessionId$1;-><init>()V

    sput-object v0, Landroid/view/textclassifier/TextClassificationSessionId;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor greylist-max-o <init>()V
    .registers 3

    .line 45
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/os/Binder;

    invoke-direct {v1}, Landroid/os/Binder;-><init>()V

    invoke-direct {p0, v0, v1}, Landroid/view/textclassifier/TextClassificationSessionId;-><init>(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 46
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;Landroid/os/IBinder;)V
    .registers 4
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "token"    # Landroid/os/IBinder;

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Landroid/view/textclassifier/TextClassificationSessionId;->mValue:Ljava/lang/String;

    .line 57
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;

    iput-object v0, p0, Landroid/view/textclassifier/TextClassificationSessionId;->mToken:Landroid/os/IBinder;

    .line 58
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 92
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 68
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 69
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_2c

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_2c

    .line 70
    :cond_12
    move-object v2, p1

    check-cast v2, Landroid/view/textclassifier/TextClassificationSessionId;

    .line 71
    .local v2, "that":Landroid/view/textclassifier/TextClassificationSessionId;
    iget-object v3, p0, Landroid/view/textclassifier/TextClassificationSessionId;->mValue:Ljava/lang/String;

    iget-object v4, v2, Landroid/view/textclassifier/TextClassificationSessionId;->mValue:Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2a

    iget-object v3, p0, Landroid/view/textclassifier/TextClassificationSessionId;->mToken:Landroid/os/IBinder;

    iget-object v4, v2, Landroid/view/textclassifier/TextClassificationSessionId;->mToken:Landroid/os/IBinder;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2a

    goto :goto_2b

    :cond_2a
    move v0, v1

    :goto_2b
    return v0

    .line 69
    .end local v2    # "that":Landroid/view/textclassifier/TextClassificationSessionId;
    :cond_2c
    :goto_2c
    return v1
.end method

.method public blacklist getToken()Landroid/os/IBinder;
    .registers 2

    .line 63
    iget-object v0, p0, Landroid/view/textclassifier/TextClassificationSessionId;->mToken:Landroid/os/IBinder;

    return-object v0
.end method

.method public whitelist getValue()Ljava/lang/String;
    .registers 2

    .line 100
    iget-object v0, p0, Landroid/view/textclassifier/TextClassificationSessionId;->mValue:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 3

    .line 76
    iget-object v0, p0, Landroid/view/textclassifier/TextClassificationSessionId;->mValue:Ljava/lang/String;

    iget-object v1, p0, Landroid/view/textclassifier/TextClassificationSessionId;->mToken:Landroid/os/IBinder;

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 81
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    iget-object v1, p0, Landroid/view/textclassifier/TextClassificationSessionId;->mValue:Ljava/lang/String;

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "TextClassificationSessionId {%s}"

    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 86
    iget-object v0, p0, Landroid/view/textclassifier/TextClassificationSessionId;->mValue:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 87
    iget-object v0, p0, Landroid/view/textclassifier/TextClassificationSessionId;->mToken:Landroid/os/IBinder;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 88
    return-void
.end method
