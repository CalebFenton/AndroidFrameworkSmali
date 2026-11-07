.class public final Landroid/app/adservices/consent/ConsentParcel;
.super Ljava/lang/Object;
.source "ConsentParcel.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/adservices/consent/ConsentParcel$Builder;,
        Landroid/app/adservices/consent/ConsentParcel$ConsentApiType;
    }
.end annotation


# static fields
.field public static final blacklist ALL_API:I = 0x1

.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/adservices/consent/ConsentParcel;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist FLEDGE:I = 0x3

.field public static final blacklist MEASUREMENT:I = 0x4

.field public static final blacklist TOPICS:I = 0x2

.field public static final blacklist UNKNOWN:I


# instance fields
.field private final blacklist mConsentApiType:I

.field private final blacklist mIsGiven:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 70
    new-instance v0, Landroid/app/adservices/consent/ConsentParcel$1;

    invoke-direct {v0}, Landroid/app/adservices/consent/ConsentParcel$1;-><init>()V

    sput-object v0, Landroid/app/adservices/consent/ConsentParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/app/adservices/consent/ConsentParcel$Builder;)V
    .registers 3
    .param p1, "builder"    # Landroid/app/adservices/consent/ConsentParcel$Builder;

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    invoke-static {p1}, Landroid/app/adservices/consent/ConsentParcel$Builder;->-$$Nest$fgetmIsGiven(Landroid/app/adservices/consent/ConsentParcel$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/app/adservices/consent/ConsentParcel;->mIsGiven:Z

    .line 62
    invoke-static {p1}, Landroid/app/adservices/consent/ConsentParcel$Builder;->-$$Nest$fgetmConsentApiType(Landroid/app/adservices/consent/ConsentParcel$Builder;)I

    move-result v0

    iput v0, p0, Landroid/app/adservices/consent/ConsentParcel;->mConsentApiType:I

    .line 63
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/app/adservices/consent/ConsentParcel$Builder;Landroid/app/adservices/consent/ConsentParcel-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/app/adservices/consent/ConsentParcel;-><init>(Landroid/app/adservices/consent/ConsentParcel$Builder;)V

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/adservices/consent/ConsentParcel;->mConsentApiType:I

    .line 67
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/app/adservices/consent/ConsentParcel;->mIsGiven:Z

    .line 68
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/app/adservices/consent/ConsentParcel-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/app/adservices/consent/ConsentParcel;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public static blacklist createGivenConsent(I)Landroid/app/adservices/consent/ConsentParcel;
    .registers 3
    .param p0, "consentApiType"    # I

    .line 115
    new-instance v0, Landroid/app/adservices/consent/ConsentParcel$Builder;

    invoke-direct {v0}, Landroid/app/adservices/consent/ConsentParcel$Builder;-><init>()V

    .line 116
    invoke-virtual {v0, p0}, Landroid/app/adservices/consent/ConsentParcel$Builder;->setConsentApiType(I)Landroid/app/adservices/consent/ConsentParcel$Builder;

    move-result-object v0

    .line 117
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/adservices/consent/ConsentParcel$Builder;->setIsGiven(Ljava/lang/Boolean;)Landroid/app/adservices/consent/ConsentParcel$Builder;

    move-result-object v0

    .line 118
    invoke-virtual {v0}, Landroid/app/adservices/consent/ConsentParcel$Builder;->build()Landroid/app/adservices/consent/ConsentParcel;

    move-result-object v0

    .line 115
    return-object v0
.end method

.method public static blacklist createRevokedConsent(I)Landroid/app/adservices/consent/ConsentParcel;
    .registers 3
    .param p0, "consentApiType"    # I

    .line 107
    new-instance v0, Landroid/app/adservices/consent/ConsentParcel$Builder;

    invoke-direct {v0}, Landroid/app/adservices/consent/ConsentParcel$Builder;-><init>()V

    .line 108
    invoke-virtual {v0, p0}, Landroid/app/adservices/consent/ConsentParcel$Builder;->setConsentApiType(I)Landroid/app/adservices/consent/ConsentParcel$Builder;

    move-result-object v0

    .line 109
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/adservices/consent/ConsentParcel$Builder;->setIsGiven(Ljava/lang/Boolean;)Landroid/app/adservices/consent/ConsentParcel$Builder;

    move-result-object v0

    .line 110
    invoke-virtual {v0}, Landroid/app/adservices/consent/ConsentParcel$Builder;->build()Landroid/app/adservices/consent/ConsentParcel;

    move-result-object v0

    .line 107
    return-object v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 85
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getConsentApiType()I
    .registers 2

    .line 97
    iget v0, p0, Landroid/app/adservices/consent/ConsentParcel;->mConsentApiType:I

    return v0
.end method

.method public blacklist isIsGiven()Z
    .registers 2

    .line 102
    iget-boolean v0, p0, Landroid/app/adservices/consent/ConsentParcel;->mIsGiven:Z

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 90
    iget v0, p0, Landroid/app/adservices/consent/ConsentParcel;->mConsentApiType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 91
    iget-boolean v0, p0, Landroid/app/adservices/consent/ConsentParcel;->mIsGiven:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 92
    return-void
.end method
