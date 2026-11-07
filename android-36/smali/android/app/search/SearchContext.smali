.class public final Landroid/app/search/SearchContext;
.super Ljava/lang/Object;
.source "SearchContext.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/search/SearchContext;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mExtras:Landroid/os/Bundle;

.field private blacklist mPackageName:Ljava/lang/String;

.field private final blacklist mResultTypes:I

.field private final blacklist mTimeoutMillis:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 133
    new-instance v0, Landroid/app/search/SearchContext$1;

    invoke-direct {v0}, Landroid/app/search/SearchContext$1;-><init>()V

    sput-object v0, Landroid/app/search/SearchContext;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>(II)V
    .registers 4
    .param p1, "resultTypes"    # I
    .param p2, "timeoutMillis"    # I

    .line 66
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-direct {p0, p1, p2, v0}, Landroid/app/search/SearchContext;-><init>(IILandroid/os/Bundle;)V

    .line 67
    return-void
.end method

.method public constructor whitelist <init>(IILandroid/os/Bundle;)V
    .registers 5
    .param p1, "resultTypes"    # I
    .param p2, "timeoutMillis"    # I
    .param p3, "extras"    # Landroid/os/Bundle;

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    iput p1, p0, Landroid/app/search/SearchContext;->mResultTypes:I

    .line 78
    iput p2, p0, Landroid/app/search/SearchContext;->mTimeoutMillis:I

    .line 79
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    iput-object v0, p0, Landroid/app/search/SearchContext;->mExtras:Landroid/os/Bundle;

    .line 80
    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "parcel"    # Landroid/os/Parcel;

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/search/SearchContext;->mResultTypes:I

    .line 84
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/search/SearchContext;->mTimeoutMillis:I

    .line 85
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/search/SearchContext;->mPackageName:Ljava/lang/String;

    .line 86
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Landroid/app/search/SearchContext;->mExtras:Landroid/os/Bundle;

    .line 87
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/app/search/SearchContext-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/app/search/SearchContext;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 118
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getExtras()Landroid/os/Bundle;
    .registers 2

    .line 108
    iget-object v0, p0, Landroid/app/search/SearchContext;->mExtras:Landroid/os/Bundle;

    return-object v0
.end method

.method public whitelist getPackageName()Ljava/lang/String;
    .registers 2

    .line 91
    iget-object v0, p0, Landroid/app/search/SearchContext;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getResultTypes()I
    .registers 2

    .line 113
    iget v0, p0, Landroid/app/search/SearchContext;->mResultTypes:I

    return v0
.end method

.method public whitelist getTimeoutMillis()I
    .registers 2

    .line 103
    iget v0, p0, Landroid/app/search/SearchContext;->mTimeoutMillis:I

    return v0
.end method

.method blacklist setPackageName(Ljava/lang/String;)V
    .registers 2
    .param p1, "packageName"    # Ljava/lang/String;

    .line 98
    iput-object p1, p0, Landroid/app/search/SearchContext;->mPackageName:Ljava/lang/String;

    .line 99
    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 123
    iget v0, p0, Landroid/app/search/SearchContext;->mResultTypes:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 124
    iget v0, p0, Landroid/app/search/SearchContext;->mTimeoutMillis:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 125
    iget-object v0, p0, Landroid/app/search/SearchContext;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 126
    iget-object v0, p0, Landroid/app/search/SearchContext;->mExtras:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 127
    return-void
.end method
