.class public final Landroid/media/Session2Command;
.super Ljava/lang/Object;
.source "Session2Command.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/Session2Command$Result;
    }
.end annotation


# static fields
.field public static final whitelist COMMAND_CODE_CUSTOM:I

.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/media/Session2Command;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mCommandCode:I

.field private final blacklist mCustomAction:Ljava/lang/String;

.field private final blacklist mCustomExtras:Landroid/os/Bundle;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 47
    new-instance v0, Landroid/media/Session2Command$1;

    invoke-direct {v0}, Landroid/media/Session2Command$1;-><init>()V

    sput-object v0, Landroid/media/Session2Command;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>(I)V
    .registers 2

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_d

    .line 74
    iput p1, p0, Landroid/media/Session2Command;->mCommandCode:I

    const/4 p1, 0x0

    .line 75
    iput-object p1, p0, Landroid/media/Session2Command;->mCustomAction:Ljava/lang/String;

    .line 76
    iput-object p1, p0, Landroid/media/Session2Command;->mCustomExtras:Landroid/os/Bundle;

    return-void

    .line 72
    :cond_d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "commandCode shouldn\'t be COMMAND_CODE_CUSTOM"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 3

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/media/Session2Command;->mCommandCode:I

    .line 100
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/media/Session2Command;->mCustomAction:Ljava/lang/String;

    .line 101
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object p1

    iput-object p1, p0, Landroid/media/Session2Command;->mCustomExtras:Landroid/os/Bundle;

    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 4

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_d

    const/4 v0, 0x0

    .line 89
    iput v0, p0, Landroid/media/Session2Command;->mCommandCode:I

    .line 90
    iput-object p1, p0, Landroid/media/Session2Command;->mCustomAction:Ljava/lang/String;

    .line 91
    iput-object p2, p0, Landroid/media/Session2Command;->mCustomExtras:Landroid/os/Bundle;

    return-void

    .line 87
    :cond_d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "action shouldn\'t be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 1

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 5

    .line 147
    instance-of v0, p1, Landroid/media/Session2Command;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 150
    :cond_6
    check-cast p1, Landroid/media/Session2Command;

    .line 151
    iget v0, p0, Landroid/media/Session2Command;->mCommandCode:I

    iget v2, p1, Landroid/media/Session2Command;->mCommandCode:I

    if-ne v0, v2, :cond_1a

    iget-object p0, p0, Landroid/media/Session2Command;->mCustomAction:Ljava/lang/String;

    iget-object p1, p1, Landroid/media/Session2Command;->mCustomAction:Ljava/lang/String;

    .line 152
    invoke-static {p0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1a

    const/4 p0, 0x1

    return p0

    :cond_1a
    return v1
.end method

.method public whitelist getCommandCode()I
    .registers 1

    .line 109
    iget p0, p0, Landroid/media/Session2Command;->mCommandCode:I

    return p0
.end method

.method public whitelist getCustomAction()Ljava/lang/String;
    .registers 1

    .line 118
    iget-object p0, p0, Landroid/media/Session2Command;->mCustomAction:Ljava/lang/String;

    return-object p0
.end method

.method public whitelist getCustomExtras()Landroid/os/Bundle;
    .registers 1

    .line 127
    iget-object p0, p0, Landroid/media/Session2Command;->mCustomExtras:Landroid/os/Bundle;

    return-object p0
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 157
    iget-object v0, p0, Landroid/media/Session2Command;->mCustomAction:Ljava/lang/String;

    iget p0, p0, Landroid/media/Session2Command;->mCommandCode:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {v0, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    if-eqz p1, :cond_12

    .line 140
    iget p2, p0, Landroid/media/Session2Command;->mCommandCode:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 141
    iget-object p2, p0, Landroid/media/Session2Command;->mCustomAction:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 142
    iget-object p0, p0, Landroid/media/Session2Command;->mCustomExtras:Landroid/os/Bundle;

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    return-void

    .line 138
    :cond_12
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "parcel shouldn\'t be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
