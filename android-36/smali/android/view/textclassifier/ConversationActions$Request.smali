.class public final Landroid/view/textclassifier/ConversationActions$Request;
.super Ljava/lang/Object;
.source "ConversationActions.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/textclassifier/ConversationActions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Request"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/textclassifier/ConversationActions$Request$Builder;,
        Landroid/view/textclassifier/ConversationActions$Request$Hint;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/view/textclassifier/ConversationActions$Request;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist HINT_FOR_IN_APP:Ljava/lang/String; = "in_app"

.field public static final whitelist HINT_FOR_NOTIFICATION:Ljava/lang/String; = "notification"


# instance fields
.field private final blacklist mConversation:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/textclassifier/ConversationActions$Message;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mExtras:Landroid/os/Bundle;

.field private final blacklist mHints:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mMaxSuggestions:I

.field private blacklist mSystemTcMetadata:Landroid/view/textclassifier/SystemTextClassifierMetadata;

.field private final blacklist mTypeConfig:Landroid/view/textclassifier/TextClassifier$EntityConfig;


# direct methods
.method static bridge synthetic blacklist -$$Nest$smreadFromParcel(Landroid/os/Parcel;)Landroid/view/textclassifier/ConversationActions$Request;
    .registers 1

    invoke-static {p0}, Landroid/view/textclassifier/ConversationActions$Request;->readFromParcel(Landroid/os/Parcel;)Landroid/view/textclassifier/ConversationActions$Request;

    move-result-object p0

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 367
    new-instance v0, Landroid/view/textclassifier/ConversationActions$Request$1;

    invoke-direct {v0}, Landroid/view/textclassifier/ConversationActions$Request$1;-><init>()V

    sput-object v0, Landroid/view/textclassifier/ConversationActions$Request;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/util/List;Landroid/view/textclassifier/TextClassifier$EntityConfig;ILjava/util/List;Landroid/os/Bundle;)V
    .registers 7
    .param p2, "typeConfig"    # Landroid/view/textclassifier/TextClassifier$EntityConfig;
    .param p3, "maxSuggestions"    # I
    .param p5, "extras"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/textclassifier/ConversationActions$Message;",
            ">;",
            "Landroid/view/textclassifier/TextClassifier$EntityConfig;",
            "I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .line 324
    .local p1, "conversation":Ljava/util/List;, "Ljava/util/List<Landroid/view/textclassifier/ConversationActions$Message;>;"
    .local p4, "hints":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 325
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Landroid/view/textclassifier/ConversationActions$Request;->mConversation:Ljava/util/List;

    .line 326
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/textclassifier/TextClassifier$EntityConfig;

    iput-object v0, p0, Landroid/view/textclassifier/ConversationActions$Request;->mTypeConfig:Landroid/view/textclassifier/TextClassifier$EntityConfig;

    .line 327
    iput p3, p0, Landroid/view/textclassifier/ConversationActions$Request;->mMaxSuggestions:I

    .line 328
    iput-object p4, p0, Landroid/view/textclassifier/ConversationActions$Request;->mHints:Ljava/util/List;

    .line 329
    iput-object p5, p0, Landroid/view/textclassifier/ConversationActions$Request;->mExtras:Landroid/os/Bundle;

    .line 330
    return-void
.end method

.method synthetic constructor blacklist <init>(Ljava/util/List;Landroid/view/textclassifier/TextClassifier$EntityConfig;ILjava/util/List;Landroid/os/Bundle;Landroid/view/textclassifier/ConversationActions-IA;)V
    .registers 7

    invoke-direct/range {p0 .. p5}, Landroid/view/textclassifier/ConversationActions$Request;-><init>(Ljava/util/List;Landroid/view/textclassifier/TextClassifier$EntityConfig;ILjava/util/List;Landroid/os/Bundle;)V

    return-void
.end method

.method private static blacklist readFromParcel(Landroid/os/Parcel;)Landroid/view/textclassifier/ConversationActions$Request;
    .registers 8
    .param p0, "in"    # Landroid/os/Parcel;

    .line 333
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v2, v0

    .line 334
    .local v2, "conversation":Ljava/util/List;, "Ljava/util/List<Landroid/view/textclassifier/ConversationActions$Message;>;"
    const-class v0, Landroid/view/textclassifier/ConversationActions$Message;

    const/4 v1, 0x0

    invoke-virtual {p0, v2, v1, v0}, Landroid/os/Parcel;->readParcelableList(Ljava/util/List;Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/util/List;

    .line 335
    const-class v0, Landroid/view/textclassifier/TextClassifier$EntityConfig;

    invoke-virtual {p0, v1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroid/view/textclassifier/TextClassifier$EntityConfig;

    .line 336
    .local v3, "typeConfig":Landroid/view/textclassifier/TextClassifier$EntityConfig;
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 337
    .local v4, "maxSuggestions":I
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 338
    .local v5, "hints":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0, v5}, Landroid/os/Parcel;->readStringList(Ljava/util/List;)V

    .line 339
    invoke-virtual {p0}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v6

    .line 340
    .local v6, "extras":Landroid/os/Bundle;
    const-class v0, Landroid/view/textclassifier/SystemTextClassifierMetadata;

    invoke-virtual {p0, v1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/textclassifier/SystemTextClassifierMetadata;

    .line 342
    .local v0, "systemTcMetadata":Landroid/view/textclassifier/SystemTextClassifierMetadata;
    new-instance v1, Landroid/view/textclassifier/ConversationActions$Request;

    invoke-direct/range {v1 .. v6}, Landroid/view/textclassifier/ConversationActions$Request;-><init>(Ljava/util/List;Landroid/view/textclassifier/TextClassifier$EntityConfig;ILjava/util/List;Landroid/os/Bundle;)V

    .line 348
    .local v1, "request":Landroid/view/textclassifier/ConversationActions$Request;
    invoke-virtual {v1, v0}, Landroid/view/textclassifier/ConversationActions$Request;->setSystemTextClassifierMetadata(Landroid/view/textclassifier/SystemTextClassifierMetadata;)V

    .line 349
    return-object v1
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 364
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getCallingPackageName()Ljava/lang/String;
    .registers 2

    .line 414
    iget-object v0, p0, Landroid/view/textclassifier/ConversationActions$Request;->mSystemTcMetadata:Landroid/view/textclassifier/SystemTextClassifierMetadata;

    if-eqz v0, :cond_b

    iget-object v0, p0, Landroid/view/textclassifier/ConversationActions$Request;->mSystemTcMetadata:Landroid/view/textclassifier/SystemTextClassifierMetadata;

    invoke-virtual {v0}, Landroid/view/textclassifier/SystemTextClassifierMetadata;->getCallingPackageName()Ljava/lang/String;

    move-result-object v0

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return-object v0
.end method

.method public whitelist getConversation()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/view/textclassifier/ConversationActions$Message;",
            ">;"
        }
    .end annotation

    .line 389
    iget-object v0, p0, Landroid/view/textclassifier/ConversationActions$Request;->mConversation:Ljava/util/List;

    return-object v0
.end method

.method public whitelist getExtras()Landroid/os/Bundle;
    .registers 2

    .line 443
    iget-object v0, p0, Landroid/view/textclassifier/ConversationActions$Request;->mExtras:Landroid/os/Bundle;

    return-object v0
.end method

.method public whitelist getHints()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 405
    iget-object v0, p0, Landroid/view/textclassifier/ConversationActions$Request;->mHints:Ljava/util/List;

    return-object v0
.end method

.method public whitelist getMaxSuggestions()I
    .registers 2

    .line 398
    iget v0, p0, Landroid/view/textclassifier/ConversationActions$Request;->mMaxSuggestions:I

    return v0
.end method

.method public blacklist getSystemTextClassifierMetadata()Landroid/view/textclassifier/SystemTextClassifierMetadata;
    .registers 2

    .line 433
    iget-object v0, p0, Landroid/view/textclassifier/ConversationActions$Request;->mSystemTcMetadata:Landroid/view/textclassifier/SystemTextClassifierMetadata;

    return-object v0
.end method

.method public whitelist getTypeConfig()Landroid/view/textclassifier/TextClassifier$EntityConfig;
    .registers 2

    .line 383
    iget-object v0, p0, Landroid/view/textclassifier/ConversationActions$Request;->mTypeConfig:Landroid/view/textclassifier/TextClassifier$EntityConfig;

    return-object v0
.end method

.method blacklist setSystemTextClassifierMetadata(Landroid/view/textclassifier/SystemTextClassifierMetadata;)V
    .registers 2
    .param p1, "systemTcData"    # Landroid/view/textclassifier/SystemTextClassifierMetadata;

    .line 423
    iput-object p1, p0, Landroid/view/textclassifier/ConversationActions$Request;->mSystemTcMetadata:Landroid/view/textclassifier/SystemTextClassifierMetadata;

    .line 424
    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 354
    iget-object v0, p0, Landroid/view/textclassifier/ConversationActions$Request;->mConversation:Ljava/util/List;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelableList(Ljava/util/List;I)V

    .line 355
    iget-object v0, p0, Landroid/view/textclassifier/ConversationActions$Request;->mTypeConfig:Landroid/view/textclassifier/TextClassifier$EntityConfig;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 356
    iget v0, p0, Landroid/view/textclassifier/ConversationActions$Request;->mMaxSuggestions:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 357
    iget-object v0, p0, Landroid/view/textclassifier/ConversationActions$Request;->mHints:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 358
    iget-object v0, p0, Landroid/view/textclassifier/ConversationActions$Request;->mExtras:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 359
    iget-object v0, p0, Landroid/view/textclassifier/ConversationActions$Request;->mSystemTcMetadata:Landroid/view/textclassifier/SystemTextClassifierMetadata;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 360
    return-void
.end method
