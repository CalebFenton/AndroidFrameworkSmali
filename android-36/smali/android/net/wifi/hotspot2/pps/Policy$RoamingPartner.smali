.class public final Landroid/net/wifi/hotspot2/pps/Policy$RoamingPartner;
.super Ljava/lang/Object;
.source "Policy.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/hotspot2/pps/Policy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RoamingPartner"
.end annotation


# static fields
.field public static final greylist-max-o CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/net/wifi/hotspot2/pps/Policy$RoamingPartner;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private greylist-max-o mCountries:Ljava/lang/String;

.field private greylist-max-o mFqdn:Ljava/lang/String;

.field private greylist-max-o mFqdnExactMatch:Z

.field private greylist-max-o mPriority:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 293
    new-instance v0, Landroid/net/wifi/hotspot2/pps/Policy$RoamingPartner$1;

    invoke-direct {v0}, Landroid/net/wifi/hotspot2/pps/Policy$RoamingPartner$1;-><init>()V

    sput-object v0, Landroid/net/wifi/hotspot2/pps/Policy$RoamingPartner;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor greylist-max-o <init>()V
    .registers 3

    .line 212
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 166
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/net/wifi/hotspot2/pps/Policy$RoamingPartner;->mFqdn:Ljava/lang/String;

    .line 180
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/net/wifi/hotspot2/pps/Policy$RoamingPartner;->mFqdnExactMatch:Z

    .line 192
    const/high16 v1, -0x80000000

    iput v1, p0, Landroid/net/wifi/hotspot2/pps/Policy$RoamingPartner;->mPriority:I

    .line 204
    iput-object v0, p0, Landroid/net/wifi/hotspot2/pps/Policy$RoamingPartner;->mCountries:Ljava/lang/String;

    .line 212
    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/net/wifi/hotspot2/pps/Policy$RoamingPartner;)V
    .registers 4
    .param p1, "source"    # Landroid/net/wifi/hotspot2/pps/Policy$RoamingPartner;

    .line 214
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 166
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/net/wifi/hotspot2/pps/Policy$RoamingPartner;->mFqdn:Ljava/lang/String;

    .line 180
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/net/wifi/hotspot2/pps/Policy$RoamingPartner;->mFqdnExactMatch:Z

    .line 192
    const/high16 v1, -0x80000000

    iput v1, p0, Landroid/net/wifi/hotspot2/pps/Policy$RoamingPartner;->mPriority:I

    .line 204
    iput-object v0, p0, Landroid/net/wifi/hotspot2/pps/Policy$RoamingPartner;->mCountries:Ljava/lang/String;

    .line 215
    if-eqz p1, :cond_21

    .line 216
    iget-object v0, p1, Landroid/net/wifi/hotspot2/pps/Policy$RoamingPartner;->mFqdn:Ljava/lang/String;

    iput-object v0, p0, Landroid/net/wifi/hotspot2/pps/Policy$RoamingPartner;->mFqdn:Ljava/lang/String;

    .line 217
    iget-boolean v0, p1, Landroid/net/wifi/hotspot2/pps/Policy$RoamingPartner;->mFqdnExactMatch:Z

    iput-boolean v0, p0, Landroid/net/wifi/hotspot2/pps/Policy$RoamingPartner;->mFqdnExactMatch:Z

    .line 218
    iget v0, p1, Landroid/net/wifi/hotspot2/pps/Policy$RoamingPartner;->mPriority:I

    iput v0, p0, Landroid/net/wifi/hotspot2/pps/Policy$RoamingPartner;->mPriority:I

    .line 219
    iget-object v0, p1, Landroid/net/wifi/hotspot2/pps/Policy$RoamingPartner;->mCountries:Ljava/lang/String;

    iput-object v0, p0, Landroid/net/wifi/hotspot2/pps/Policy$RoamingPartner;->mCountries:Ljava/lang/String;

    .line 221
    :cond_21
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 225
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "thatObject"    # Ljava/lang/Object;

    .line 238
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 239
    return v0

    .line 241
    :cond_4
    instance-of v1, p1, Landroid/net/wifi/hotspot2/pps/Policy$RoamingPartner;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    .line 242
    return v2

    .line 245
    :cond_a
    move-object v1, p1

    check-cast v1, Landroid/net/wifi/hotspot2/pps/Policy$RoamingPartner;

    .line 246
    .local v1, "that":Landroid/net/wifi/hotspot2/pps/Policy$RoamingPartner;
    iget-object v3, p0, Landroid/net/wifi/hotspot2/pps/Policy$RoamingPartner;->mFqdn:Ljava/lang/String;

    iget-object v4, v1, Landroid/net/wifi/hotspot2/pps/Policy$RoamingPartner;->mFqdn:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2e

    iget-boolean v3, p0, Landroid/net/wifi/hotspot2/pps/Policy$RoamingPartner;->mFqdnExactMatch:Z

    iget-boolean v4, v1, Landroid/net/wifi/hotspot2/pps/Policy$RoamingPartner;->mFqdnExactMatch:Z

    if-ne v3, v4, :cond_2e

    iget v3, p0, Landroid/net/wifi/hotspot2/pps/Policy$RoamingPartner;->mPriority:I

    iget v4, v1, Landroid/net/wifi/hotspot2/pps/Policy$RoamingPartner;->mPriority:I

    if-ne v3, v4, :cond_2e

    iget-object v3, p0, Landroid/net/wifi/hotspot2/pps/Policy$RoamingPartner;->mCountries:Ljava/lang/String;

    iget-object v4, v1, Landroid/net/wifi/hotspot2/pps/Policy$RoamingPartner;->mCountries:Ljava/lang/String;

    .line 249
    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2e

    goto :goto_2f

    :cond_2e
    move v0, v2

    .line 246
    :goto_2f
    return v0
.end method

.method public greylist-max-o getCountries()Ljava/lang/String;
    .registers 2

    .line 209
    iget-object v0, p0, Landroid/net/wifi/hotspot2/pps/Policy$RoamingPartner;->mCountries:Ljava/lang/String;

    return-object v0
.end method

.method public greylist-max-o getFqdn()Ljava/lang/String;
    .registers 2

    .line 171
    iget-object v0, p0, Landroid/net/wifi/hotspot2/pps/Policy$RoamingPartner;->mFqdn:Ljava/lang/String;

    return-object v0
.end method

.method public greylist-max-o getFqdnExactMatch()Z
    .registers 2

    .line 185
    iget-boolean v0, p0, Landroid/net/wifi/hotspot2/pps/Policy$RoamingPartner;->mFqdnExactMatch:Z

    return v0
.end method

.method public greylist-max-o getPriority()I
    .registers 2

    .line 197
    iget v0, p0, Landroid/net/wifi/hotspot2/pps/Policy$RoamingPartner;->mPriority:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 5

    .line 254
    iget-object v0, p0, Landroid/net/wifi/hotspot2/pps/Policy$RoamingPartner;->mFqdn:Ljava/lang/String;

    iget-boolean v1, p0, Landroid/net/wifi/hotspot2/pps/Policy$RoamingPartner;->mFqdnExactMatch:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iget v2, p0, Landroid/net/wifi/hotspot2/pps/Policy$RoamingPartner;->mPriority:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Landroid/net/wifi/hotspot2/pps/Policy$RoamingPartner;->mCountries:Ljava/lang/String;

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public greylist-max-o setCountries(Ljava/lang/String;)V
    .registers 2
    .param p1, "countries"    # Ljava/lang/String;

    .line 206
    iput-object p1, p0, Landroid/net/wifi/hotspot2/pps/Policy$RoamingPartner;->mCountries:Ljava/lang/String;

    .line 207
    return-void
.end method

.method public greylist-max-o setFqdn(Ljava/lang/String;)V
    .registers 2
    .param p1, "fqdn"    # Ljava/lang/String;

    .line 168
    iput-object p1, p0, Landroid/net/wifi/hotspot2/pps/Policy$RoamingPartner;->mFqdn:Ljava/lang/String;

    .line 169
    return-void
.end method

.method public greylist-max-o setFqdnExactMatch(Z)V
    .registers 2
    .param p1, "fqdnExactMatch"    # Z

    .line 182
    iput-boolean p1, p0, Landroid/net/wifi/hotspot2/pps/Policy$RoamingPartner;->mFqdnExactMatch:Z

    .line 183
    return-void
.end method

.method public greylist-max-o setPriority(I)V
    .registers 2
    .param p1, "priority"    # I

    .line 194
    iput p1, p0, Landroid/net/wifi/hotspot2/pps/Policy$RoamingPartner;->mPriority:I

    .line 195
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 5

    .line 259
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 260
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v1, "FQDN: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/net/wifi/hotspot2/pps/Policy$RoamingPartner;->mFqdn:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 261
    const-string v1, "ExactMatch: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "mFqdnExactMatch"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 262
    const-string v1, "Priority: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Landroid/net/wifi/hotspot2/pps/Policy$RoamingPartner;->mPriority:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 263
    const-string v1, "Countries: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Landroid/net/wifi/hotspot2/pps/Policy$RoamingPartner;->mCountries:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 264
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public greylist-max-o validate()Z
    .registers 6

    .line 274
    iget-object v0, p0, Landroid/net/wifi/hotspot2/pps/Policy$RoamingPartner;->mFqdn:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "Policy"

    if-eqz v0, :cond_11

    .line 275
    const-string v0, "Missing FQDN"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    return v1

    .line 278
    :cond_11
    iget-object v0, p0, Landroid/net/wifi/hotspot2/pps/Policy$RoamingPartner;->mFqdn:Ljava/lang/String;

    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    array-length v0, v0

    const/16 v3, 0xff

    if-le v0, v3, :cond_24

    .line 279
    const-string v0, "FQDN is too long"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    return v1

    .line 282
    :cond_24
    iget-object v0, p0, Landroid/net/wifi/hotspot2/pps/Policy$RoamingPartner;->mCountries:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_32

    .line 283
    const-string v0, "Missing countries"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    return v1

    .line 286
    :cond_32
    iget-object v0, p0, Landroid/net/wifi/hotspot2/pps/Policy$RoamingPartner;->mCountries:Ljava/lang/String;

    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    array-length v0, v0

    if-le v0, v3, :cond_43

    .line 287
    const-string v0, "country is too long"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    return v1

    .line 290
    :cond_43
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 230
    iget-object v0, p0, Landroid/net/wifi/hotspot2/pps/Policy$RoamingPartner;->mFqdn:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 231
    iget-boolean v0, p0, Landroid/net/wifi/hotspot2/pps/Policy$RoamingPartner;->mFqdnExactMatch:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 232
    iget v0, p0, Landroid/net/wifi/hotspot2/pps/Policy$RoamingPartner;->mPriority:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 233
    iget-object v0, p0, Landroid/net/wifi/hotspot2/pps/Policy$RoamingPartner;->mCountries:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 234
    return-void
.end method
