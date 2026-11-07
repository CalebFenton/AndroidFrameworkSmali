.class public final Landroid/app/search/Query;
.super Ljava/lang/Object;
.source "Query.java"

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
            "Landroid/app/search/Query;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist EXTRA_IME_HEIGHT:Ljava/lang/String; = "android.app.search.extra.IME_HEIGHT"


# instance fields
.field private final blacklist mExtras:Landroid/os/Bundle;

.field private final blacklist mInput:Ljava/lang/String;

.field private final blacklist mTimestampMillis:J


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 148
    new-instance v0, Landroid/app/search/Query$1;

    invoke-direct {v0}, Landroid/app/search/Query$1;-><init>()V

    sput-object v0, Landroid/app/search/Query;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "parcel"    # Landroid/os/Parcel;

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/search/Query;->mInput:Ljava/lang/String;

    .line 88
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/app/search/Query;->mTimestampMillis:J

    .line 89
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Landroid/app/search/Query;->mExtras:Landroid/os/Bundle;

    .line 90
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/app/search/Query-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/app/search/Query;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/String;J)V
    .registers 5
    .param p1, "input"    # Ljava/lang/String;
    .param p2, "timestampMillis"    # J

    .line 83
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/app/search/Query;-><init>(Ljava/lang/String;JLandroid/os/Bundle;)V

    .line 84
    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/String;JLandroid/os/Bundle;)V
    .registers 6
    .param p1, "input"    # Ljava/lang/String;
    .param p2, "timestampMillis"    # J
    .param p4, "extras"    # Landroid/os/Bundle;

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    iput-object p1, p0, Landroid/app/search/Query;->mInput:Ljava/lang/String;

    .line 72
    iput-wide p2, p0, Landroid/app/search/Query;->mTimestampMillis:J

    .line 73
    if-eqz p4, :cond_b

    move-object v0, p4

    goto :goto_10

    :cond_b
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    :goto_10
    iput-object v0, p0, Landroid/app/search/Query;->mExtras:Landroid/os/Bundle;

    .line 74
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 134
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getExtras()Landroid/os/Bundle;
    .registers 2

    .line 126
    iget-object v0, p0, Landroid/app/search/Query;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_a

    .line 127
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    return-object v0

    .line 129
    :cond_a
    iget-object v0, p0, Landroid/app/search/Query;->mExtras:Landroid/os/Bundle;

    return-object v0
.end method

.method public whitelist getInput()Ljava/lang/String;
    .registers 2

    .line 97
    iget-object v0, p0, Landroid/app/search/Query;->mInput:Ljava/lang/String;

    return-object v0
.end method

.method public greylist getTimestamp()J
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 109
    iget-wide v0, p0, Landroid/app/search/Query;->mTimestampMillis:J

    return-wide v0
.end method

.method public whitelist getTimestampMillis()J
    .registers 3

    .line 118
    iget-wide v0, p0, Landroid/app/search/Query;->mTimestampMillis:J

    return-wide v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 139
    iget-object v0, p0, Landroid/app/search/Query;->mInput:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 140
    iget-wide v0, p0, Landroid/app/search/Query;->mTimestampMillis:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 141
    iget-object v0, p0, Landroid/app/search/Query;->mExtras:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 142
    return-void
.end method
