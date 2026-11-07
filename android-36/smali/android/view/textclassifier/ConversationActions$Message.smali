.class public final Landroid/view/textclassifier/ConversationActions$Message;
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
    name = "Message"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/textclassifier/ConversationActions$Message$Builder;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/view/textclassifier/ConversationActions$Message;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist PERSON_USER_OTHERS:Landroid/app/Person;

.field public static final whitelist PERSON_USER_SELF:Landroid/app/Person;


# instance fields
.field private final blacklist mAuthor:Landroid/app/Person;

.field private final blacklist mExtras:Landroid/os/Bundle;

.field private final blacklist mReferenceTime:Ljava/time/ZonedDateTime;

.field private final blacklist mText:Ljava/lang/CharSequence;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 111
    new-instance v0, Landroid/app/Person$Builder;

    invoke-direct {v0}, Landroid/app/Person$Builder;-><init>()V

    .line 113
    const-string/jumbo v1, "text-classifier-conversation-actions-user-self"

    invoke-virtual {v0, v1}, Landroid/app/Person$Builder;->setKey(Ljava/lang/String;)Landroid/app/Person$Builder;

    move-result-object v0

    .line 114
    invoke-virtual {v0}, Landroid/app/Person$Builder;->build()Landroid/app/Person;

    move-result-object v0

    sput-object v0, Landroid/view/textclassifier/ConversationActions$Message;->PERSON_USER_SELF:Landroid/app/Person;

    .line 126
    new-instance v0, Landroid/app/Person$Builder;

    invoke-direct {v0}, Landroid/app/Person$Builder;-><init>()V

    .line 128
    const-string/jumbo v1, "text-classifier-conversation-actions-user-others"

    invoke-virtual {v0, v1}, Landroid/app/Person$Builder;->setKey(Ljava/lang/String;)Landroid/app/Person$Builder;

    move-result-object v0

    .line 129
    invoke-virtual {v0}, Landroid/app/Person$Builder;->build()Landroid/app/Person;

    move-result-object v0

    sput-object v0, Landroid/view/textclassifier/ConversationActions$Message;->PERSON_USER_OTHERS:Landroid/app/Person;

    .line 178
    new-instance v0, Landroid/view/textclassifier/ConversationActions$Message$1;

    invoke-direct {v0}, Landroid/view/textclassifier/ConversationActions$Message$1;-><init>()V

    sput-object v0, Landroid/view/textclassifier/ConversationActions$Message;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/app/Person;Ljava/time/ZonedDateTime;Ljava/lang/CharSequence;Landroid/os/Bundle;)V
    .registers 6
    .param p1, "author"    # Landroid/app/Person;
    .param p2, "referenceTime"    # Ljava/time/ZonedDateTime;
    .param p3, "text"    # Ljava/lang/CharSequence;
    .param p4, "bundle"    # Landroid/os/Bundle;

    .line 144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 145
    iput-object p1, p0, Landroid/view/textclassifier/ConversationActions$Message;->mAuthor:Landroid/app/Person;

    .line 146
    iput-object p2, p0, Landroid/view/textclassifier/ConversationActions$Message;->mReferenceTime:Ljava/time/ZonedDateTime;

    .line 147
    iput-object p3, p0, Landroid/view/textclassifier/ConversationActions$Message;->mText:Ljava/lang/CharSequence;

    .line 148
    invoke-static {p4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    iput-object v0, p0, Landroid/view/textclassifier/ConversationActions$Message;->mExtras:Landroid/os/Bundle;

    .line 149
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/app/Person;Ljava/time/ZonedDateTime;Ljava/lang/CharSequence;Landroid/os/Bundle;Landroid/view/textclassifier/ConversationActions-IA;)V
    .registers 6

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/textclassifier/ConversationActions$Message;-><init>(Landroid/app/Person;Ljava/time/ZonedDateTime;Ljava/lang/CharSequence;Landroid/os/Bundle;)V

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 151
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 152
    const-class v0, Landroid/app/Person;

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Person;

    iput-object v0, p0, Landroid/view/textclassifier/ConversationActions$Message;->mAuthor:Landroid/app/Person;

    .line 153
    nop

    .line 154
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-nez v0, :cond_16

    .line 155
    goto :goto_21

    .line 156
    :cond_16
    nop

    .line 157
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/time/format/DateTimeFormatter;->ISO_ZONED_DATE_TIME:Ljava/time/format/DateTimeFormatter;

    .line 156
    invoke-static {v0, v1}, Ljava/time/ZonedDateTime;->parse(Ljava/lang/CharSequence;Ljava/time/format/DateTimeFormatter;)Ljava/time/ZonedDateTime;

    move-result-object v1

    :goto_21
    iput-object v1, p0, Landroid/view/textclassifier/ConversationActions$Message;->mReferenceTime:Ljava/time/ZonedDateTime;

    .line 158
    invoke-virtual {p1}, Landroid/os/Parcel;->readCharSequence()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/view/textclassifier/ConversationActions$Message;->mText:Ljava/lang/CharSequence;

    .line 159
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Landroid/view/textclassifier/ConversationActions$Message;->mExtras:Landroid/os/Bundle;

    .line 160
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/view/textclassifier/ConversationActions-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/view/textclassifier/ConversationActions$Message;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 175
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getAuthor()Landroid/app/Person;
    .registers 2

    .line 194
    iget-object v0, p0, Landroid/view/textclassifier/ConversationActions$Message;->mAuthor:Landroid/app/Person;

    return-object v0
.end method

.method public whitelist getExtras()Landroid/os/Bundle;
    .registers 2

    .line 219
    iget-object v0, p0, Landroid/view/textclassifier/ConversationActions$Message;->mExtras:Landroid/os/Bundle;

    return-object v0
.end method

.method public whitelist getReferenceTime()Ljava/time/ZonedDateTime;
    .registers 2

    .line 203
    iget-object v0, p0, Landroid/view/textclassifier/ConversationActions$Message;->mReferenceTime:Ljava/time/ZonedDateTime;

    return-object v0
.end method

.method public whitelist getText()Ljava/lang/CharSequence;
    .registers 2

    .line 209
    iget-object v0, p0, Landroid/view/textclassifier/ConversationActions$Message;->mText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 164
    iget-object v0, p0, Landroid/view/textclassifier/ConversationActions$Message;->mAuthor:Landroid/app/Person;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 165
    iget-object v0, p0, Landroid/view/textclassifier/ConversationActions$Message;->mReferenceTime:Ljava/time/ZonedDateTime;

    if-eqz v0, :cond_b

    const/4 v0, 0x1

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 166
    iget-object v0, p0, Landroid/view/textclassifier/ConversationActions$Message;->mReferenceTime:Ljava/time/ZonedDateTime;

    if-eqz v0, :cond_1e

    .line 167
    iget-object v0, p0, Landroid/view/textclassifier/ConversationActions$Message;->mReferenceTime:Ljava/time/ZonedDateTime;

    sget-object v1, Ljava/time/format/DateTimeFormatter;->ISO_ZONED_DATE_TIME:Ljava/time/format/DateTimeFormatter;

    invoke-virtual {v0, v1}, Ljava/time/ZonedDateTime;->format(Ljava/time/format/DateTimeFormatter;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 169
    :cond_1e
    iget-object v0, p0, Landroid/view/textclassifier/ConversationActions$Message;->mText:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    .line 170
    iget-object v0, p0, Landroid/view/textclassifier/ConversationActions$Message;->mExtras:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 171
    return-void
.end method
