.class Landroid/icu/impl/number/LocalizedNumberFormatterAsFormat$Proxy;
.super Ljava/lang/Object;
.source "LocalizedNumberFormatterAsFormat.java"

# interfaces
.implements Ljava/io/Externalizable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/number/LocalizedNumberFormatterAsFormat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Proxy"
.end annotation


# static fields
.field private static final whitelist serialVersionUID:J = 0x1L


# instance fields
.field blacklist languageTag:Ljava/lang/String;

.field blacklist skeleton:Ljava/lang/String;


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 132
    return-void
.end method

.method private whitelist readResolve()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .line 149
    iget-object v0, p0, Landroid/icu/impl/number/LocalizedNumberFormatterAsFormat$Proxy;->skeleton:Ljava/lang/String;

    invoke-static {v0}, Landroid/icu/number/NumberFormatter;->forSkeleton(Ljava/lang/String;)Landroid/icu/number/UnlocalizedNumberFormatter;

    move-result-object v0

    iget-object v1, p0, Landroid/icu/impl/number/LocalizedNumberFormatterAsFormat$Proxy;->languageTag:Ljava/lang/String;

    .line 150
    invoke-static {v1}, Landroid/icu/util/ULocale;->forLanguageTag(Ljava/lang/String;)Landroid/icu/util/ULocale;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/icu/number/UnlocalizedNumberFormatter;->locale(Landroid/icu/util/ULocale;)Landroid/icu/number/LocalizedNumberFormatter;

    move-result-object v0

    .line 151
    invoke-virtual {v0}, Landroid/icu/number/LocalizedNumberFormatter;->toFormat()Ljava/text/Format;

    move-result-object v0

    .line 149
    return-object v0
.end method


# virtual methods
.method public whitelist test-api readExternal(Ljava/io/ObjectInput;)V
    .registers 3
    .param p1, "in"    # Ljava/io/ObjectInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 143
    invoke-interface {p1}, Ljava/io/ObjectInput;->readByte()B

    .line 144
    invoke-interface {p1}, Ljava/io/ObjectInput;->readUTF()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/impl/number/LocalizedNumberFormatterAsFormat$Proxy;->languageTag:Ljava/lang/String;

    .line 145
    invoke-interface {p1}, Ljava/io/ObjectInput;->readUTF()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/impl/number/LocalizedNumberFormatterAsFormat$Proxy;->skeleton:Ljava/lang/String;

    .line 146
    return-void
.end method

.method public whitelist test-api writeExternal(Ljava/io/ObjectOutput;)V
    .registers 3
    .param p1, "out"    # Ljava/io/ObjectOutput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 136
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeByte(I)V

    .line 137
    iget-object v0, p0, Landroid/icu/impl/number/LocalizedNumberFormatterAsFormat$Proxy;->languageTag:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeUTF(Ljava/lang/String;)V

    .line 138
    iget-object v0, p0, Landroid/icu/impl/number/LocalizedNumberFormatterAsFormat$Proxy;->skeleton:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeUTF(Ljava/lang/String;)V

    .line 139
    return-void
.end method
