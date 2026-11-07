.class public Landroid/hardware/face/FaceEnrollOptions;
.super Ljava/lang/Object;
.source "FaceEnrollOptions.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/face/FaceEnrollOptions$Builder;,
        Landroid/hardware/face/FaceEnrollOptions$EnrollReason;
    }
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/face/FaceEnrollOptions;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist ENROLL_REASON_RE_ENROLL_NOTIFICATION:I = 0x1

.field public static final blacklist ENROLL_REASON_SETTINGS:I = 0x2

.field public static final blacklist ENROLL_REASON_SUW:I = 0x3

.field public static final blacklist ENROLL_REASON_UNKNOWN:I


# instance fields
.field private final blacklist mEnrollReason:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$smdefaultEnrollReason()I
    .registers 1

    invoke-static {}, Landroid/hardware/face/FaceEnrollOptions;->defaultEnrollReason()I

    move-result v0

    return v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 188
    new-instance v0, Landroid/hardware/face/FaceEnrollOptions$1;

    invoke-direct {v0}, Landroid/hardware/face/FaceEnrollOptions$1;-><init>()V

    sput-object v0, Landroid/hardware/face/FaceEnrollOptions;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor blacklist <init>(I)V
    .registers 8
    .param p1, "enrollReason"    # I

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    iput p1, p0, Landroid/hardware/face/FaceEnrollOptions;->mEnrollReason:I

    .line 96
    iget v0, p0, Landroid/hardware/face/FaceEnrollOptions;->mEnrollReason:I

    if-eqz v0, :cond_63

    iget v0, p0, Landroid/hardware/face/FaceEnrollOptions;->mEnrollReason:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_63

    iget v0, p0, Landroid/hardware/face/FaceEnrollOptions;->mEnrollReason:I

    const/4 v2, 0x2

    if-eq v0, v2, :cond_63

    iget v0, p0, Landroid/hardware/face/FaceEnrollOptions;->mEnrollReason:I

    const/4 v3, 0x3

    if-ne v0, v3, :cond_19

    goto :goto_63

    .line 100
    :cond_19
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "enrollReason was "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Landroid/hardware/face/FaceEnrollOptions;->mEnrollReason:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " but must be one of: ENROLL_REASON_UNKNOWN("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "), ENROLL_REASON_RE_ENROLL_NOTIFICATION("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "), ENROLL_REASON_SETTINGS("

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "), ENROLL_REASON_SUW("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 110
    :cond_63
    :goto_63
    return-void
.end method

.method protected constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 9
    .param p1, "in"    # Landroid/os/Parcel;

    .line 163
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 167
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 169
    .local v0, "enrollReason":I
    iput v0, p0, Landroid/hardware/face/FaceEnrollOptions;->mEnrollReason:I

    .line 171
    iget v1, p0, Landroid/hardware/face/FaceEnrollOptions;->mEnrollReason:I

    if-eqz v1, :cond_67

    iget v1, p0, Landroid/hardware/face/FaceEnrollOptions;->mEnrollReason:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_67

    iget v1, p0, Landroid/hardware/face/FaceEnrollOptions;->mEnrollReason:I

    const/4 v3, 0x2

    if-eq v1, v3, :cond_67

    iget v1, p0, Landroid/hardware/face/FaceEnrollOptions;->mEnrollReason:I

    const/4 v4, 0x3

    if-ne v1, v4, :cond_1d

    goto :goto_67

    .line 175
    :cond_1d
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "enrollReason was "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Landroid/hardware/face/FaceEnrollOptions;->mEnrollReason:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " but must be one of: ENROLL_REASON_UNKNOWN("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "), ENROLL_REASON_RE_ENROLL_NOTIFICATION("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "), ENROLL_REASON_SETTINGS("

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "), ENROLL_REASON_SUW("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 185
    :cond_67
    :goto_67
    return-void
.end method

.method private blacklist __metadata()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 253
    return-void
.end method

.method private static blacklist defaultEnrollReason()I
    .registers 1

    .line 47
    const/4 v0, 0x0

    return v0
.end method

.method public static blacklist enrollReasonToString(I)Ljava/lang/String;
    .registers 2
    .param p0, "value"    # I

    .line 78
    packed-switch p0, :pswitch_data_14

    .line 87
    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 86
    :pswitch_8
    const-string v0, "ENROLL_REASON_SUW"

    return-object v0

    .line 84
    :pswitch_b
    const-string v0, "ENROLL_REASON_SETTINGS"

    return-object v0

    .line 82
    :pswitch_e
    const-string v0, "ENROLL_REASON_RE_ENROLL_NOTIFICATION"

    return-object v0

    .line 80
    :pswitch_11
    const-string v0, "ENROLL_REASON_UNKNOWN"

    return-object v0

    :pswitch_data_14
    .packed-switch 0x0
        :pswitch_11
        :pswitch_e
        :pswitch_b
        :pswitch_8
    .end packed-switch
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 158
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 127
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 128
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_1e

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_1e

    .line 130
    :cond_12
    move-object v2, p1

    check-cast v2, Landroid/hardware/face/FaceEnrollOptions;

    .line 132
    .local v2, "that":Landroid/hardware/face/FaceEnrollOptions;
    iget v3, p0, Landroid/hardware/face/FaceEnrollOptions;->mEnrollReason:I

    iget v4, v2, Landroid/hardware/face/FaceEnrollOptions;->mEnrollReason:I

    if-ne v3, v4, :cond_1c

    goto :goto_1d

    :cond_1c
    move v0, v1

    :goto_1d
    return v0

    .line 128
    .end local v2    # "that":Landroid/hardware/face/FaceEnrollOptions;
    :cond_1e
    :goto_1e
    return v1
.end method

.method public blacklist getEnrollReason()I
    .registers 2

    .line 117
    iget v0, p0, Landroid/hardware/face/FaceEnrollOptions;->mEnrollReason:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 4

    .line 142
    const/4 v0, 0x1

    .line 143
    .local v0, "_hash":I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/hardware/face/FaceEnrollOptions;->mEnrollReason:I

    add-int/2addr v1, v2

    .line 144
    .end local v0    # "_hash":I
    .local v1, "_hash":I
    return v1
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 153
    iget v0, p0, Landroid/hardware/face/FaceEnrollOptions;->mEnrollReason:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 154
    return-void
.end method
