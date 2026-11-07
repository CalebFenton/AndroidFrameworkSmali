.class public final Landroid/nfc/cardemulation/AidGroup;
.super Ljava/lang/Object;
.source "AidGroup.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# static fields
.field private static final blacklist AID_PATTERN:Ljava/util/regex/Pattern;

.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/nfc/cardemulation/AidGroup;",
            ">;"
        }
    .end annotation
.end field

.field private static final greylist-max-o MAX_NUM_AIDS:I = 0x100

.field private static final greylist-max-o TAG:Ljava/lang/String; = "AidGroup"


# instance fields
.field private final blacklist mAids:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mCategory:Ljava/lang/String;

.field private final blacklist mDescription:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 176
    new-instance v0, Landroid/nfc/cardemulation/AidGroup$1;

    invoke-direct {v0}, Landroid/nfc/cardemulation/AidGroup$1;-><init>()V

    sput-object v0, Landroid/nfc/cardemulation/AidGroup;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 269
    const-string v0, "[0-9A-Fa-f]{10,32}\\*?\\#?"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroid/nfc/cardemulation/AidGroup;->AID_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method constructor blacklist <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "category"    # Ljava/lang/String;
    .param p2, "description"    # Ljava/lang/String;

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/nfc/cardemulation/AidGroup;->mAids:Ljava/util/List;

    .line 107
    iput-object p1, p0, Landroid/nfc/cardemulation/AidGroup;->mCategory:Ljava/lang/String;

    .line 108
    iput-object p2, p0, Landroid/nfc/cardemulation/AidGroup;->mDescription:Ljava/lang/String;

    .line 109
    return-void
.end method

.method public constructor whitelist <init>(Ljava/util/List;Ljava/lang/String;)V
    .registers 7
    .param p2, "category"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 75
    .local p1, "aids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    if-eqz p1, :cond_8a

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_8a

    .line 79
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0x100

    if-gt v0, v1, :cond_82

    .line 82
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_17
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_49

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 83
    .local v1, "aid":Ljava/lang/String;
    invoke-static {v1}, Landroid/nfc/cardemulation/AidGroup;->isValidAid(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2a

    .line 86
    .end local v1    # "aid":Ljava/lang/String;
    goto :goto_17

    .line 84
    .restart local v1    # "aid":Ljava/lang/String;
    :cond_2a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AID "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is not a valid AID."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 87
    .end local v1    # "aid":Ljava/lang/String;
    :cond_49
    invoke-static {p2}, Landroid/nfc/cardemulation/AidGroup;->isValidCategory(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_52

    .line 88
    iput-object p2, p0, Landroid/nfc/cardemulation/AidGroup;->mCategory:Ljava/lang/String;

    goto :goto_57

    .line 90
    :cond_52
    const-string/jumbo v0, "other"

    iput-object v0, p0, Landroid/nfc/cardemulation/AidGroup;->mCategory:Ljava/lang/String;

    .line 92
    :goto_57
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Landroid/nfc/cardemulation/AidGroup;->mAids:Ljava/util/List;

    .line 93
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_66
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 94
    .restart local v1    # "aid":Ljava/lang/String;
    iget-object v2, p0, Landroid/nfc/cardemulation/AidGroup;->mAids:Ljava/util/List;

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v1, v3}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 95
    .end local v1    # "aid":Ljava/lang/String;
    goto :goto_66

    .line 96
    :cond_7e
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/nfc/cardemulation/AidGroup;->mDescription:Ljava/lang/String;

    .line 97
    return-void

    .line 80
    :cond_82
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Too many AIDs in AID group."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 77
    :cond_8a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No AIDS in AID group."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static whitelist createFromXml(Lorg/xmlpull/v1/XmlPullParser;)Landroid/nfc/cardemulation/AidGroup;
    .registers 12
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 207
    const/4 v0, 0x0

    .line 208
    .local v0, "category":Ljava/lang/String;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 209
    .local v1, "aids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .line 210
    .local v2, "group":Landroid/nfc/cardemulation/AidGroup;
    const/4 v3, 0x0

    .line 212
    .local v3, "inGroup":Z
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v4

    .line 213
    .local v4, "eventType":I
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v5

    .line 214
    .local v5, "minDepth":I
    :goto_10
    const/4 v6, 0x1

    if-eq v4, v6, :cond_90

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v6

    if-lt v6, v5, :cond_90

    .line 215
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    .line 216
    .local v6, "tagName":Ljava/lang/String;
    const/4 v7, 0x2

    const-string v8, "aid-group"

    if-ne v4, v7, :cond_73

    .line 217
    const-string v7, "aid"

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    const/4 v9, 0x0

    const-string v10, "AidGroup"

    if-eqz v7, :cond_46

    .line 218
    if-eqz v3, :cond_40

    .line 219
    const-string/jumbo v7, "value"

    invoke-interface {p0, v9, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 220
    .local v7, "aid":Ljava/lang/String;
    if-eqz v7, :cond_3f

    .line 221
    invoke-virtual {v7}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 223
    .end local v7    # "aid":Ljava/lang/String;
    :cond_3f
    goto :goto_8b

    .line 224
    :cond_40
    const-string v7, "Ignoring <aid> tag while not in group"

    invoke-static {v10, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8b

    .line 226
    :cond_46
    invoke-virtual {v6, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5c

    .line 227
    const-string v7, "category"

    invoke-interface {p0, v9, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 228
    if-nez v0, :cond_5a

    .line 229
    const-string v7, "<aid-group> tag without valid category"

    invoke-static {v10, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    return-object v9

    .line 232
    :cond_5a
    const/4 v3, 0x1

    goto :goto_8b

    .line 234
    :cond_5c
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Ignoring unexpected tag: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v10, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8b

    .line 236
    :cond_73
    const/4 v7, 0x3

    if-ne v4, v7, :cond_8b

    .line 237
    invoke-virtual {v6, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8b

    if-eqz v3, :cond_8b

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_8b

    .line 238
    new-instance v7, Landroid/nfc/cardemulation/AidGroup;

    invoke-direct {v7, v1, v0}, Landroid/nfc/cardemulation/AidGroup;-><init>(Ljava/util/List;Ljava/lang/String;)V

    move-object v2, v7

    .line 239
    goto :goto_90

    .line 242
    :cond_8b
    :goto_8b
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v4

    .line 243
    .end local v6    # "tagName":Ljava/lang/String;
    goto :goto_10

    .line 244
    :cond_90
    :goto_90
    return-object v2
.end method

.method private static blacklist isValidAid(Ljava/lang/String;)Z
    .registers 8
    .param p0, "aid"    # Ljava/lang/String;

    .line 275
    const/4 v0, 0x0

    if-nez p0, :cond_4

    .line 276
    return v0

    .line 279
    :cond_4
    const-string v1, "*"

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    const-string v3, "#"

    const-string v4, " is not a valid AID."

    const-string v5, "AID "

    const-string v6, "AidGroup"

    if-nez v2, :cond_1a

    invoke-virtual {p0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3b

    :cond_1a
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    rem-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_3b

    .line 280
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    return v0

    .line 285
    :cond_3b
    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_68

    invoke-virtual {p0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_68

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_68

    .line 286
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    return v0

    .line 291
    :cond_68
    sget-object v1, Landroid/nfc/cardemulation/AidGroup;->AID_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-nez v1, :cond_8d

    .line 292
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    return v0

    .line 296
    :cond_8d
    const/4 v0, 0x1

    return v0
.end method

.method private static greylist-max-o isValidCategory(Ljava/lang/String;)Z
    .registers 2
    .param p0, "category"    # Ljava/lang/String;

    .line 265
    const-string/jumbo v0, "payment"

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15

    .line 266
    const-string/jumbo v0, "other"

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    goto :goto_15

    :cond_13
    const/4 v0, 0x0

    goto :goto_16

    :cond_15
    :goto_15
    const/4 v0, 0x1

    .line 265
    :goto_16
    return v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 162
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist dump(Landroid/util/proto/ProtoOutputStream;)V
    .registers 6
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;

    .line 153
    const-wide v0, 0x10900000001L

    iget-object v2, p0, Landroid/nfc/cardemulation/AidGroup;->mCategory:Ljava/lang/String;

    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 154
    iget-object v0, p0, Landroid/nfc/cardemulation/AidGroup;->mAids:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_25

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 155
    .local v1, "aid":Ljava/lang/String;
    const-wide v2, 0x20900000002L

    invoke-virtual {p1, v2, v3, v1}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 156
    .end local v1    # "aid":Ljava/lang/String;
    goto :goto_10

    .line 157
    :cond_25
    return-void
.end method

.method public whitelist getAids()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 129
    iget-object v0, p0, Landroid/nfc/cardemulation/AidGroup;->mAids:Ljava/util/List;

    return-object v0
.end method

.method public whitelist getCategory()Ljava/lang/String;
    .registers 2

    .line 118
    iget-object v0, p0, Landroid/nfc/cardemulation/AidGroup;->mCategory:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 5

    .line 134
    new-instance v0, Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Category: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/nfc/cardemulation/AidGroup;->mCategory:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", AIDs:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 136
    .local v0, "out":Ljava/lang/StringBuilder;
    iget-object v1, p0, Landroid/nfc/cardemulation/AidGroup;->mAids:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_26
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 137
    .local v2, "aid":Ljava/lang/String;
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    const-string v3, ", "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    .end local v2    # "aid":Ljava/lang/String;
    goto :goto_26

    .line 140
    :cond_3b
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist writeAsXml(Lorg/xmlpull/v1/XmlSerializer;)V
    .registers 8
    .param p1, "out"    # Lorg/xmlpull/v1/XmlSerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 254
    const/4 v0, 0x0

    const-string v1, "aid-group"

    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 255
    const-string v2, "category"

    iget-object v3, p0, Landroid/nfc/cardemulation/AidGroup;->mCategory:Ljava/lang/String;

    invoke-interface {p1, v0, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 256
    iget-object v2, p0, Landroid/nfc/cardemulation/AidGroup;->mAids:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_13
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 257
    .local v3, "aid":Ljava/lang/String;
    const-string v4, "aid"

    invoke-interface {p1, v0, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 258
    const-string/jumbo v5, "value"

    invoke-interface {p1, v0, v5, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 259
    invoke-interface {p1, v0, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 260
    .end local v3    # "aid":Ljava/lang/String;
    goto :goto_13

    .line 261
    :cond_2e
    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 262
    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 168
    iget-object v0, p0, Landroid/nfc/cardemulation/AidGroup;->mCategory:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    .line 169
    iget-object v0, p0, Landroid/nfc/cardemulation/AidGroup;->mAids:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 170
    iget-object v0, p0, Landroid/nfc/cardemulation/AidGroup;->mAids:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1b

    .line 171
    iget-object v0, p0, Landroid/nfc/cardemulation/AidGroup;->mAids:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 173
    :cond_1b
    return-void
.end method
