.class Ljava/security/Provider$UString;
.super Ljava/lang/Object;
.source "Provider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/security/Provider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UString"
.end annotation


# instance fields
.field final greylist-max-o lowerString:Ljava/lang/String;

.field final greylist-max-o string:Ljava/lang/String;


# direct methods
.method constructor greylist-max-o <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "s"    # Ljava/lang/String;

    .line 1288
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1289
    iput-object p1, p0, Ljava/security/Provider$UString;->string:Ljava/lang/String;

    .line 1290
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljava/security/Provider$UString;->lowerString:Ljava/lang/String;

    .line 1291
    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 5
    .param p1, "obj"    # Ljava/lang/Object;

    .line 1298
    if-ne p0, p1, :cond_4

    .line 1299
    const/4 v0, 0x1

    return v0

    .line 1301
    :cond_4
    instance-of v0, p1, Ljava/security/Provider$UString;

    if-nez v0, :cond_a

    .line 1302
    const/4 v0, 0x0

    return v0

    .line 1304
    :cond_a
    move-object v0, p1

    check-cast v0, Ljava/security/Provider$UString;

    .line 1305
    .local v0, "other":Ljava/security/Provider$UString;
    iget-object v1, p0, Ljava/security/Provider$UString;->lowerString:Ljava/lang/String;

    iget-object v2, v0, Ljava/security/Provider$UString;->lowerString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 1294
    iget-object v0, p0, Ljava/security/Provider$UString;->lowerString:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 2

    .line 1309
    iget-object v0, p0, Ljava/security/Provider$UString;->string:Ljava/lang/String;

    return-object v0
.end method
