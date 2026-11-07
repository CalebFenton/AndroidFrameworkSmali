.class public Landroid/content/ContentProviderResult;
.super Ljava/lang/Object;
.source "ContentProviderResult.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/content/ContentProviderResult;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final whitelist count:Ljava/lang/Integer;

.field public final whitelist exception:Ljava/lang/Throwable;

.field public final whitelist extras:Landroid/os/Bundle;

.field public final whitelist uri:Landroid/net/Uri;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 129
    new-instance v0, Landroid/content/ContentProviderResult$1;

    invoke-direct {v0}, Landroid/content/ContentProviderResult$1;-><init>()V

    sput-object v0, Landroid/content/ContentProviderResult;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>(I)V
    .registers 4
    .param p1, "count"    # I

    .line 46
    const/4 v0, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v0, v1, v0, v0}, Landroid/content/ContentProviderResult;-><init>(Landroid/net/Uri;Ljava/lang/Integer;Landroid/os/Bundle;Ljava/lang/Throwable;)V

    .line 47
    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/content/ContentProviderResult;I)V
    .registers 4
    .param p1, "cpr"    # Landroid/content/ContentProviderResult;
    .param p2, "userId"    # I

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    iget-object v0, p1, Landroid/content/ContentProviderResult;->uri:Landroid/net/Uri;

    invoke-static {v0, p2}, Landroid/content/ContentProvider;->maybeAddUserId(Landroid/net/Uri;I)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Landroid/content/ContentProviderResult;->uri:Landroid/net/Uri;

    .line 91
    iget-object v0, p1, Landroid/content/ContentProviderResult;->count:Ljava/lang/Integer;

    iput-object v0, p0, Landroid/content/ContentProviderResult;->count:Ljava/lang/Integer;

    .line 92
    iget-object v0, p1, Landroid/content/ContentProviderResult;->extras:Landroid/os/Bundle;

    iput-object v0, p0, Landroid/content/ContentProviderResult;->extras:Landroid/os/Bundle;

    .line 93
    iget-object v0, p1, Landroid/content/ContentProviderResult;->exception:Ljava/lang/Throwable;

    iput-object v0, p0, Landroid/content/ContentProviderResult;->exception:Ljava/lang/Throwable;

    .line 94
    return-void
.end method

.method public constructor whitelist <init>(Landroid/net/Uri;)V
    .registers 4
    .param p1, "uri"    # Landroid/net/Uri;

    .line 42
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, v1, v1}, Landroid/content/ContentProviderResult;-><init>(Landroid/net/Uri;Ljava/lang/Integer;Landroid/os/Bundle;Ljava/lang/Throwable;)V

    .line 43
    return-void
.end method

.method public constructor blacklist <init>(Landroid/net/Uri;Ljava/lang/Integer;Landroid/os/Bundle;Ljava/lang/Throwable;)V
    .registers 5
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "count"    # Ljava/lang/Integer;
    .param p3, "extras"    # Landroid/os/Bundle;
    .param p4, "exception"    # Ljava/lang/Throwable;

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object p1, p0, Landroid/content/ContentProviderResult;->uri:Landroid/net/Uri;

    .line 60
    iput-object p2, p0, Landroid/content/ContentProviderResult;->count:Ljava/lang/Integer;

    .line 61
    iput-object p3, p0, Landroid/content/ContentProviderResult;->extras:Landroid/os/Bundle;

    .line 62
    iput-object p4, p0, Landroid/content/ContentProviderResult;->exception:Ljava/lang/Throwable;

    .line 63
    return-void
.end method

.method public constructor whitelist <init>(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "extras"    # Landroid/os/Bundle;

    .line 50
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    const/4 v1, 0x0

    invoke-direct {p0, v1, v1, v0, v1}, Landroid/content/ContentProviderResult;-><init>(Landroid/net/Uri;Ljava/lang/Integer;Landroid/os/Bundle;Ljava/lang/Throwable;)V

    .line 51
    return-void
.end method

.method public constructor whitelist <init>(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "source"    # Landroid/os/Parcel;

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_15

    .line 67
    sget-object v0, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Landroid/content/ContentProviderResult;->uri:Landroid/net/Uri;

    goto :goto_17

    .line 69
    :cond_15
    iput-object v1, p0, Landroid/content/ContentProviderResult;->uri:Landroid/net/Uri;

    .line 71
    :goto_17
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_28

    .line 72
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Landroid/content/ContentProviderResult;->count:Ljava/lang/Integer;

    goto :goto_2a

    .line 74
    :cond_28
    iput-object v1, p0, Landroid/content/ContentProviderResult;->count:Ljava/lang/Integer;

    .line 76
    :goto_2a
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_37

    .line 77
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Landroid/content/ContentProviderResult;->extras:Landroid/os/Bundle;

    goto :goto_39

    .line 79
    :cond_37
    iput-object v1, p0, Landroid/content/ContentProviderResult;->extras:Landroid/os/Bundle;

    .line 81
    :goto_39
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_46

    .line 82
    invoke-static {p1}, Landroid/os/ParcelableException;->readFromParcel(Landroid/os/Parcel;)Ljava/lang/Throwable;

    move-result-object v0

    iput-object v0, p0, Landroid/content/ContentProviderResult;->exception:Ljava/lang/Throwable;

    goto :goto_48

    .line 84
    :cond_46
    iput-object v1, p0, Landroid/content/ContentProviderResult;->exception:Ljava/lang/Throwable;

    .line 86
    :goto_48
    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "exception"    # Ljava/lang/Throwable;

    .line 54
    const/4 v0, 0x0

    invoke-direct {p0, v0, v0, v0, p1}, Landroid/content/ContentProviderResult;-><init>(Landroid/net/Uri;Ljava/lang/Integer;Landroid/os/Bundle;Ljava/lang/Throwable;)V

    .line 55
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 126
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 5

    .line 144
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ContentProviderResult("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 145
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget-object v1, p0, Landroid/content/ContentProviderResult;->uri:Landroid/net/Uri;

    const/16 v2, 0x20

    if-eqz v1, :cond_1d

    .line 146
    const-string/jumbo v1, "uri="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Landroid/content/ContentProviderResult;->uri:Landroid/net/Uri;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 148
    :cond_1d
    iget-object v1, p0, Landroid/content/ContentProviderResult;->count:Ljava/lang/Integer;

    if-eqz v1, :cond_30

    .line 149
    const-string v1, "count="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Landroid/content/ContentProviderResult;->count:Ljava/lang/Integer;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 151
    :cond_30
    iget-object v1, p0, Landroid/content/ContentProviderResult;->extras:Landroid/os/Bundle;

    if-eqz v1, :cond_43

    .line 152
    const-string v1, "extras="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Landroid/content/ContentProviderResult;->extras:Landroid/os/Bundle;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 154
    :cond_43
    iget-object v1, p0, Landroid/content/ContentProviderResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_56

    .line 155
    const-string v1, "exception="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Landroid/content/ContentProviderResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 157
    :cond_56
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 158
    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 6
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 98
    iget-object v0, p0, Landroid/content/ContentProviderResult;->uri:Landroid/net/Uri;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_f

    .line 99
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 100
    iget-object v0, p0, Landroid/content/ContentProviderResult;->uri:Landroid/net/Uri;

    invoke-virtual {v0, p1, p2}, Landroid/net/Uri;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_12

    .line 102
    :cond_f
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 104
    :goto_12
    iget-object v0, p0, Landroid/content/ContentProviderResult;->count:Ljava/lang/Integer;

    if-eqz v0, :cond_23

    .line 105
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 106
    iget-object v0, p0, Landroid/content/ContentProviderResult;->count:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_26

    .line 108
    :cond_23
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 110
    :goto_26
    iget-object v0, p0, Landroid/content/ContentProviderResult;->extras:Landroid/os/Bundle;

    if-eqz v0, :cond_33

    .line 111
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 112
    iget-object v0, p0, Landroid/content/ContentProviderResult;->extras:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    goto :goto_36

    .line 114
    :cond_33
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 116
    :goto_36
    iget-object v0, p0, Landroid/content/ContentProviderResult;->exception:Ljava/lang/Throwable;

    if-eqz v0, :cond_43

    .line 117
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 118
    iget-object v0, p0, Landroid/content/ContentProviderResult;->exception:Ljava/lang/Throwable;

    invoke-static {p1, v0}, Landroid/os/ParcelableException;->writeToParcel(Landroid/os/Parcel;Ljava/lang/Throwable;)V

    goto :goto_46

    .line 120
    :cond_43
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 122
    :goto_46
    return-void
.end method
