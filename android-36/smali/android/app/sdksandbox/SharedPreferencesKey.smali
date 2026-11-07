.class public final Landroid/app/sdksandbox/SharedPreferencesKey;
.super Ljava/lang/Object;
.source "SharedPreferencesKey.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/sdksandbox/SharedPreferencesKey$KeyType;
    }
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/sdksandbox/SharedPreferencesKey;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist KEY_TYPE_BOOLEAN:I = 0x1

.field public static final blacklist KEY_TYPE_FLOAT:I = 0x2

.field public static final blacklist KEY_TYPE_INTEGER:I = 0x3

.field public static final blacklist KEY_TYPE_LONG:I = 0x4

.field public static final blacklist KEY_TYPE_STRING:I = 0x5

.field public static final blacklist KEY_TYPE_STRING_SET:I = 0x6


# instance fields
.field private final blacklist mKeyName:Ljava/lang/String;

.field private final blacklist mKeyType:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 82
    new-instance v0, Landroid/app/sdksandbox/SharedPreferencesKey$1;

    invoke-direct {v0}, Landroid/app/sdksandbox/SharedPreferencesKey$1;-><init>()V

    sput-object v0, Landroid/app/sdksandbox/SharedPreferencesKey;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/sdksandbox/SharedPreferencesKey;->mKeyName:Ljava/lang/String;

    .line 100
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/sdksandbox/SharedPreferencesKey;->mKeyType:I

    .line 101
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/app/sdksandbox/SharedPreferencesKey-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/app/sdksandbox/SharedPreferencesKey;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;I)V
    .registers 3
    .param p1, "keyName"    # Ljava/lang/String;
    .param p2, "keyType"    # I

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    iput-object p1, p0, Landroid/app/sdksandbox/SharedPreferencesKey;->mKeyName:Ljava/lang/String;

    .line 95
    iput p2, p0, Landroid/app/sdksandbox/SharedPreferencesKey;->mKeyType:I

    .line 96
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 111
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 121
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 122
    :cond_4
    instance-of v1, p1, Landroid/app/sdksandbox/SharedPreferencesKey;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    .line 123
    :cond_a
    move-object v1, p1

    check-cast v1, Landroid/app/sdksandbox/SharedPreferencesKey;

    .line 124
    .local v1, "that":Landroid/app/sdksandbox/SharedPreferencesKey;
    iget-object v3, p0, Landroid/app/sdksandbox/SharedPreferencesKey;->mKeyName:Ljava/lang/String;

    invoke-virtual {v1}, Landroid/app/sdksandbox/SharedPreferencesKey;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_22

    iget v3, p0, Landroid/app/sdksandbox/SharedPreferencesKey;->mKeyType:I

    invoke-virtual {v1}, Landroid/app/sdksandbox/SharedPreferencesKey;->getType()I

    move-result v4

    if-ne v3, v4, :cond_22

    goto :goto_23

    :cond_22
    move v0, v2

    :goto_23
    return v0
.end method

.method public blacklist getName()Ljava/lang/String;
    .registers 2

    .line 135
    iget-object v0, p0, Landroid/app/sdksandbox/SharedPreferencesKey;->mKeyName:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getType()I
    .registers 2

    .line 140
    iget v0, p0, Landroid/app/sdksandbox/SharedPreferencesKey;->mKeyType:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 3

    .line 129
    iget-object v0, p0, Landroid/app/sdksandbox/SharedPreferencesKey;->mKeyName:Ljava/lang/String;

    iget v1, p0, Landroid/app/sdksandbox/SharedPreferencesKey;->mKeyType:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 116
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SharedPreferencesKey{mKeyName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/sdksandbox/SharedPreferencesKey;->mKeyName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mKeyType=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/app/sdksandbox/SharedPreferencesKey;->mKeyType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 105
    iget-object v0, p0, Landroid/app/sdksandbox/SharedPreferencesKey;->mKeyName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 106
    iget v0, p0, Landroid/app/sdksandbox/SharedPreferencesKey;->mKeyType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 107
    return-void
.end method
