.class public final Landroid/adservices/common/AdServicesModuleUserChoice;
.super Ljava/lang/Object;
.source "AdServicesModuleUserChoice.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/adservices/common/AdServicesModuleUserChoice$ModuleUserChoiceCode;
    }
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/adservices/common/AdServicesModuleUserChoice;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist USER_CHOICE_OPTED_IN:I = 0x1

.field public static final blacklist USER_CHOICE_OPTED_OUT:I = 0x2

.field public static final blacklist USER_CHOICE_UNKNOWN:I


# instance fields
.field private blacklist mModule:I

.field private blacklist mUserChoice:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 98
    new-instance v0, Landroid/adservices/common/AdServicesModuleUserChoice$1;

    invoke-direct {v0}, Landroid/adservices/common/AdServicesModuleUserChoice$1;-><init>()V

    sput-object v0, Landroid/adservices/common/AdServicesModuleUserChoice;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(II)V
    .registers 4
    .param p1, "module"    # I
    .param p2, "userChoice"    # I

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    invoke-static {p1}, Landroid/adservices/common/Module;->validate(I)I

    move-result v0

    iput v0, p0, Landroid/adservices/common/AdServicesModuleUserChoice;->mModule:I

    .line 79
    invoke-static {p2}, Landroid/adservices/common/AdServicesModuleUserChoice;->validate(I)I

    move-result v0

    iput v0, p0, Landroid/adservices/common/AdServicesModuleUserChoice;->mUserChoice:I

    .line 80
    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    const-string v0, "Parcel is null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 66
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/adservices/common/AdServicesModuleUserChoice;->mModule:I

    .line 67
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/adservices/common/AdServicesModuleUserChoice;->mUserChoice:I

    .line 68
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/adservices/common/AdServicesModuleUserChoice-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/adservices/common/AdServicesModuleUserChoice;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private static blacklist validate(I)I
    .registers 4
    .param p0, "userChoice"    # I

    .line 91
    packed-switch p0, :pswitch_data_1e

    .line 93
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid User Choice:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 92
    :pswitch_1c
    nop

    .line 91
    return p0

    :pswitch_data_1e
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
    .end packed-switch
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 113
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getModule()I
    .registers 2

    .line 125
    iget v0, p0, Landroid/adservices/common/AdServicesModuleUserChoice;->mModule:I

    return v0
.end method

.method public blacklist getUserChoice()I
    .registers 2

    .line 130
    iget v0, p0, Landroid/adservices/common/AdServicesModuleUserChoice;->mUserChoice:I

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 118
    const-string v0, "Parcel is null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 119
    iget v0, p0, Landroid/adservices/common/AdServicesModuleUserChoice;->mModule:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 120
    iget v0, p0, Landroid/adservices/common/AdServicesModuleUserChoice;->mUserChoice:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 121
    return-void
.end method
