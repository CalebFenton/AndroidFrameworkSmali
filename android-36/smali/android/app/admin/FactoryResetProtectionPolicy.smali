.class public final Landroid/app/admin/FactoryResetProtectionPolicy;
.super Ljava/lang/Object;
.source "FactoryResetProtectionPolicy.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/admin/FactoryResetProtectionPolicy$Builder;
    }
.end annotation


# static fields
.field private static final blacklist ATTR_VALUE:Ljava/lang/String; = "value"

.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/admin/FactoryResetProtectionPolicy;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist KEY_FACTORY_RESET_PROTECTION_ACCOUNT:Ljava/lang/String; = "factory_reset_protection_account"

.field private static final blacklist KEY_FACTORY_RESET_PROTECTION_ENABLED:Ljava/lang/String; = "factory_reset_protection_enabled"

.field private static final blacklist LOG_TAG:Ljava/lang/String; = "FactoryResetProtectionPolicy"


# instance fields
.field private final blacklist mFactoryResetProtectionAccounts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mFactoryResetProtectionEnabled:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 176
    new-instance v0, Landroid/app/admin/FactoryResetProtectionPolicy$1;

    invoke-direct {v0}, Landroid/app/admin/FactoryResetProtectionPolicy$1;-><init>()V

    sput-object v0, Landroid/app/admin/FactoryResetProtectionPolicy;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/util/List;Z)V
    .registers 3
    .param p2, "factoryResetProtectionEnabled"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .line 72
    .local p1, "factoryResetProtectionAccounts":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    iput-object p1, p0, Landroid/app/admin/FactoryResetProtectionPolicy;->mFactoryResetProtectionAccounts:Ljava/util/List;

    .line 74
    iput-boolean p2, p0, Landroid/app/admin/FactoryResetProtectionPolicy;->mFactoryResetProtectionEnabled:Z

    .line 75
    return-void
.end method

.method synthetic constructor blacklist <init>(Ljava/util/List;ZLandroid/app/admin/FactoryResetProtectionPolicy-IA;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Landroid/app/admin/FactoryResetProtectionPolicy;-><init>(Ljava/util/List;Z)V

    return-void
.end method

.method public static blacklist readFromXml(Lcom/android/modules/utils/TypedXmlPullParser;)Landroid/app/admin/FactoryResetProtectionPolicy;
    .registers 8
    .param p0, "parser"    # Lcom/android/modules/utils/TypedXmlPullParser;

    .line 208
    const/4 v0, 0x0

    :try_start_1
    const-string v1, "factory_reset_protection_enabled"

    const/4 v2, 0x0

    invoke-interface {p0, v0, v1, v2}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    .line 211
    .local v1, "factoryResetProtectionEnabled":Z
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 212
    .local v2, "factoryResetProtectionAccounts":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    move-result v3

    .line 214
    .local v3, "outerDepth":I
    :cond_11
    :goto_11
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    move-result v4

    move v5, v4

    .local v5, "type":I
    const/4 v6, 0x1

    if-eq v4, v6, :cond_40

    const/4 v4, 0x3

    if-ne v5, v4, :cond_22

    .line 215
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    move-result v6

    if-le v6, v3, :cond_40

    .line 216
    :cond_22
    if-eq v5, v4, :cond_11

    const/4 v4, 0x4

    if-ne v5, v4, :cond_28

    .line 217
    goto :goto_11

    .line 219
    :cond_28
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v6, "factory_reset_protection_account"

    invoke-virtual {v4, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_35

    .line 220
    goto :goto_11

    .line 222
    :cond_35
    const-string/jumbo v4, "value"

    .line 223
    invoke-interface {p0, v0, v4}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 222
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_11

    .line 226
    :cond_40
    new-instance v4, Landroid/app/admin/FactoryResetProtectionPolicy;

    invoke-direct {v4, v2, v1}, Landroid/app/admin/FactoryResetProtectionPolicy;-><init>(Ljava/util/List;Z)V
    :try_end_45
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_45} :catch_46
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_45} :catch_46

    return-object v4

    .line 228
    .end local v1    # "factoryResetProtectionEnabled":Z
    .end local v2    # "factoryResetProtectionAccounts":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v3    # "outerDepth":I
    .end local v5    # "type":I
    :catch_46
    move-exception v1

    .line 229
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "FactoryResetProtectionPolicy"

    const-string v3, "Reading from xml failed"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 231
    .end local v1    # "e":Ljava/lang/Exception;
    return-object v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 173
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist dump(Landroid/util/IndentingPrintWriter;)V
    .registers 4
    .param p1, "pw"    # Landroid/util/IndentingPrintWriter;

    .line 263
    const-string v0, "factoryResetProtectionEnabled="

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 264
    iget-boolean v0, p0, Landroid/app/admin/FactoryResetProtectionPolicy;->mFactoryResetProtectionEnabled:Z

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Z)V

    .line 266
    const-string v0, "factoryResetProtectionAccounts="

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 267
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 268
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_13
    iget-object v1, p0, Landroid/app/admin/FactoryResetProtectionPolicy;->mFactoryResetProtectionAccounts:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_29

    .line 269
    iget-object v1, p0, Landroid/app/admin/FactoryResetProtectionPolicy;->mFactoryResetProtectionAccounts:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 268
    add-int/lit8 v0, v0, 0x1

    goto :goto_13

    .line 271
    .end local v0    # "i":I
    :cond_29
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 272
    return-void
.end method

.method public whitelist getFactoryResetProtectionAccounts()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 81
    iget-object v0, p0, Landroid/app/admin/FactoryResetProtectionPolicy;->mFactoryResetProtectionAccounts:Ljava/util/List;

    return-object v0
.end method

.method public whitelist isFactoryResetProtectionEnabled()Z
    .registers 2

    .line 88
    iget-boolean v0, p0, Landroid/app/admin/FactoryResetProtectionPolicy;->mFactoryResetProtectionEnabled:Z

    return v0
.end method

.method public blacklist isNotEmpty()Z
    .registers 2

    .line 256
    iget-object v0, p0, Landroid/app/admin/FactoryResetProtectionPolicy;->mFactoryResetProtectionAccounts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_e

    iget-boolean v0, p0, Landroid/app/admin/FactoryResetProtectionPolicy;->mFactoryResetProtectionEnabled:Z

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 155
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FactoryResetProtectionPolicy{mFactoryResetProtectionAccounts="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/admin/FactoryResetProtectionPolicy;->mFactoryResetProtectionAccounts:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mFactoryResetProtectionEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/app/admin/FactoryResetProtectionPolicy;->mFactoryResetProtectionEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 6
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 163
    iget-object v0, p0, Landroid/app/admin/FactoryResetProtectionPolicy;->mFactoryResetProtectionAccounts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 164
    .local v0, "accountsCount":I
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 165
    iget-object v1, p0, Landroid/app/admin/FactoryResetProtectionPolicy;->mFactoryResetProtectionAccounts:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 166
    .local v2, "account":Ljava/lang/String;
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 167
    .end local v2    # "account":Ljava/lang/String;
    goto :goto_f

    .line 168
    :cond_1f
    iget-boolean v1, p0, Landroid/app/admin/FactoryResetProtectionPolicy;->mFactoryResetProtectionEnabled:Z

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 169
    return-void
.end method

.method public blacklist writeToXml(Lcom/android/modules/utils/TypedXmlSerializer;)V
    .registers 7
    .param p1, "out"    # Lcom/android/modules/utils/TypedXmlSerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 238
    const-string v0, "factory_reset_protection_enabled"

    iget-boolean v1, p0, Landroid/app/admin/FactoryResetProtectionPolicy;->mFactoryResetProtectionEnabled:Z

    const/4 v2, 0x0

    invoke-interface {p1, v2, v0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    .line 240
    iget-object v0, p0, Landroid/app/admin/FactoryResetProtectionPolicy;->mFactoryResetProtectionAccounts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_29

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 241
    .local v1, "account":Ljava/lang/String;
    const-string v3, "factory_reset_protection_account"

    invoke-interface {p1, v2, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 242
    const-string/jumbo v4, "value"

    invoke-interface {p1, v2, v4, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 243
    invoke-interface {p1, v2, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 244
    .end local v1    # "account":Ljava/lang/String;
    goto :goto_e

    .line 245
    :cond_29
    return-void
.end method
