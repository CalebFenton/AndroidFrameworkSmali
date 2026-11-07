.class public final Landroid/view/textclassifier/SystemTextClassifierMetadata;
.super Ljava/lang/Object;
.source "SystemTextClassifierMetadata.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/view/textclassifier/SystemTextClassifierMetadata;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mCallingPackageName:Ljava/lang/String;

.field private final blacklist mUseDefaultTextClassifier:Z

.field private final blacklist mUserId:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$smreadFromParcel(Landroid/os/Parcel;)Landroid/view/textclassifier/SystemTextClassifierMetadata;
    .registers 1

    invoke-static {p0}, Landroid/view/textclassifier/SystemTextClassifierMetadata;->readFromParcel(Landroid/os/Parcel;)Landroid/view/textclassifier/SystemTextClassifierMetadata;

    move-result-object p0

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 109
    new-instance v0, Landroid/view/textclassifier/SystemTextClassifierMetadata$1;

    invoke-direct {v0}, Landroid/view/textclassifier/SystemTextClassifierMetadata$1;-><init>()V

    sput-object v0, Landroid/view/textclassifier/SystemTextClassifierMetadata;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;IZ)V
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "useDefaultTextClassifier"    # Z

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    iput-object p1, p0, Landroid/view/textclassifier/SystemTextClassifierMetadata;->mCallingPackageName:Ljava/lang/String;

    .line 54
    iput p2, p0, Landroid/view/textclassifier/SystemTextClassifierMetadata;->mUserId:I

    .line 55
    iput-boolean p3, p0, Landroid/view/textclassifier/SystemTextClassifierMetadata;->mUseDefaultTextClassifier:Z

    .line 56
    return-void
.end method

.method private static blacklist readFromParcel(Landroid/os/Parcel;)Landroid/view/textclassifier/SystemTextClassifierMetadata;
    .registers 5
    .param p0, "in"    # Landroid/os/Parcel;

    .line 91
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 92
    .local v0, "packageName":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 93
    .local v1, "userId":I
    invoke-virtual {p0}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 94
    .local v2, "useDefaultTextClassifier":Z
    new-instance v3, Landroid/view/textclassifier/SystemTextClassifierMetadata;

    invoke-direct {v3, v0, v1, v2}, Landroid/view/textclassifier/SystemTextClassifierMetadata;-><init>(Ljava/lang/String;IZ)V

    return-object v3
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 99
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getCallingPackageName()Ljava/lang/String;
    .registers 2

    .line 72
    iget-object v0, p0, Landroid/view/textclassifier/SystemTextClassifierMetadata;->mCallingPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getUserId()I
    .registers 2

    .line 63
    iget v0, p0, Landroid/view/textclassifier/SystemTextClassifierMetadata;->mUserId:I

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 5

    .line 84
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    iget-object v1, p0, Landroid/view/textclassifier/SystemTextClassifierMetadata;->mCallingPackageName:Ljava/lang/String;

    iget v2, p0, Landroid/view/textclassifier/SystemTextClassifierMetadata;->mUserId:I

    .line 87
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-boolean v3, p0, Landroid/view/textclassifier/SystemTextClassifierMetadata;->mUseDefaultTextClassifier:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    filled-new-array {v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v1

    .line 84
    const-string v2, "SystemTextClassifierMetadata {callingPackageName=%s, userId=%d, useDefaultTextClassifier=%b}"

    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist useDefaultTextClassifier()Z
    .registers 2

    .line 79
    iget-boolean v0, p0, Landroid/view/textclassifier/SystemTextClassifierMetadata;->mUseDefaultTextClassifier:Z

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 104
    iget-object v0, p0, Landroid/view/textclassifier/SystemTextClassifierMetadata;->mCallingPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 105
    iget v0, p0, Landroid/view/textclassifier/SystemTextClassifierMetadata;->mUserId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 106
    iget-boolean v0, p0, Landroid/view/textclassifier/SystemTextClassifierMetadata;->mUseDefaultTextClassifier:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 107
    return-void
.end method
