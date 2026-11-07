.class public final Landroid/service/notification/Condition;
.super Ljava/lang/Object;
.source "Condition.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/notification/Condition$Source;,
        Landroid/service/notification/Condition$State;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/service/notification/Condition;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist FLAG_RELEVANT_ALWAYS:I = 0x2

.field public static final whitelist FLAG_RELEVANT_NOW:I = 0x1

.field public static final blacklist MAX_STRING_LENGTH:I = 0x3e8

.field public static final whitelist SCHEME:Ljava/lang/String; = "condition"

.field public static final whitelist SOURCE_CONTEXT:I = 0x3

.field public static final whitelist SOURCE_SCHEDULE:I = 0x2

.field public static final whitelist SOURCE_UNKNOWN:I = 0x0

.field public static final whitelist SOURCE_USER_ACTION:I = 0x1

.field public static final whitelist STATE_ERROR:I = 0x3

.field public static final whitelist STATE_FALSE:I = 0x0

.field public static final whitelist STATE_TRUE:I = 0x1

.field public static final whitelist STATE_UNKNOWN:I = 0x2


# instance fields
.field public final whitelist flags:I

.field public final whitelist icon:I

.field public final whitelist id:Landroid/net/Uri;

.field public final whitelist line1:Ljava/lang/String;

.field public final whitelist line2:Ljava/lang/String;

.field public final whitelist source:I

.field public final whitelist state:I

.field public final whitelist summary:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 327
    new-instance v0, Landroid/service/notification/Condition$1;

    invoke-direct {v0}, Landroid/service/notification/Condition$1;-><init>()V

    sput-object v0, Landroid/service/notification/Condition;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>(Landroid/net/Uri;Ljava/lang/String;I)V
    .registers 13
    .param p1, "id"    # Landroid/net/Uri;
    .param p2, "summary"    # Ljava/lang/String;
    .param p3, "state"    # I

    .line 131
    const/4 v7, 0x0

    const/4 v8, 0x2

    const-string v3, ""

    const-string v4, ""

    const/4 v5, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v6, p3

    .end local p1    # "id":Landroid/net/Uri;
    .end local p2    # "summary":Ljava/lang/String;
    .end local p3    # "state":I
    .local v1, "id":Landroid/net/Uri;
    .local v2, "summary":Ljava/lang/String;
    .local v6, "state":I
    invoke-direct/range {v0 .. v8}, Landroid/service/notification/Condition;-><init>(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIII)V

    .line 132
    return-void
.end method

.method public constructor whitelist <init>(Landroid/net/Uri;Ljava/lang/String;II)V
    .registers 14
    .param p1, "id"    # Landroid/net/Uri;
    .param p2, "summary"    # Ljava/lang/String;
    .param p3, "state"    # I
    .param p4, "source"    # I

    .line 143
    const/4 v5, -0x1

    const/4 v8, 0x2

    const-string v3, ""

    const-string v4, ""

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v6, p3

    move v7, p4

    .end local p1    # "id":Landroid/net/Uri;
    .end local p2    # "summary":Ljava/lang/String;
    .end local p3    # "state":I
    .end local p4    # "source":I
    .local v1, "id":Landroid/net/Uri;
    .local v2, "summary":Ljava/lang/String;
    .local v6, "state":I
    .local v7, "source":I
    invoke-direct/range {v0 .. v8}, Landroid/service/notification/Condition;-><init>(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIII)V

    .line 144
    return-void
.end method

.method public constructor whitelist <init>(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;III)V
    .registers 17
    .param p1, "id"    # Landroid/net/Uri;
    .param p2, "summary"    # Ljava/lang/String;
    .param p3, "line1"    # Ljava/lang/String;
    .param p4, "line2"    # Ljava/lang/String;
    .param p5, "icon"    # I
    .param p6, "state"    # I
    .param p7, "flags"    # I

    .line 149
    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move v6, p6

    move/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Landroid/service/notification/Condition;-><init>(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIII)V

    .line 150
    return-void
.end method

.method public constructor whitelist <init>(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIII)V
    .registers 12
    .param p1, "id"    # Landroid/net/Uri;
    .param p2, "summary"    # Ljava/lang/String;
    .param p3, "line1"    # Ljava/lang/String;
    .param p4, "line2"    # Ljava/lang/String;
    .param p5, "icon"    # I
    .param p6, "state"    # I
    .param p7, "source"    # I
    .param p8, "flags"    # I

    .line 165
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 166
    if-eqz p1, :cond_55

    .line 167
    if-eqz p2, :cond_4c

    .line 168
    invoke-static {p6}, Landroid/service/notification/Condition;->isValidState(I)Z

    move-result v0

    if-eqz v0, :cond_32

    .line 169
    invoke-static {p1}, Landroid/service/notification/Condition;->getTrimmedUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Landroid/service/notification/Condition;->id:Landroid/net/Uri;

    .line 170
    invoke-static {p2}, Landroid/service/notification/Condition;->getTrimmedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/service/notification/Condition;->summary:Ljava/lang/String;

    .line 171
    invoke-static {p3}, Landroid/service/notification/Condition;->getTrimmedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/service/notification/Condition;->line1:Ljava/lang/String;

    .line 172
    invoke-static {p4}, Landroid/service/notification/Condition;->getTrimmedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/service/notification/Condition;->line2:Ljava/lang/String;

    .line 173
    iput p5, p0, Landroid/service/notification/Condition;->icon:I

    .line 174
    iput p6, p0, Landroid/service/notification/Condition;->state:I

    .line 175
    invoke-static {p7}, Landroid/service/notification/Condition;->checkValidSource(I)I

    move-result v0

    iput v0, p0, Landroid/service/notification/Condition;->source:I

    .line 176
    iput p8, p0, Landroid/service/notification/Condition;->flags:I

    .line 177
    return-void

    .line 168
    :cond_32
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "state is invalid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 167
    :cond_4c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "summary is required"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 166
    :cond_55
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "id is required"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor whitelist <init>(Landroid/os/Parcel;)V
    .registers 12
    .param p1, "source"    # Landroid/os/Parcel;

    .line 183
    const-class v0, Landroid/service/notification/Condition;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-class v1, Landroid/net/Uri;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/net/Uri;

    .line 184
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 185
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 186
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 187
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 188
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 189
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 190
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 183
    move-object v1, p0

    invoke-direct/range {v1 .. v9}, Landroid/service/notification/Condition;-><init>(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIII)V

    .line 191
    return-void
.end method

.method private static blacklist checkValidSource(I)I
    .registers 3
    .param p0, "source"    # I

    .line 203
    if-ltz p0, :cond_7

    const/4 v0, 0x3

    if-gt p0, v0, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    const-string v1, "Condition source must be one of SOURCE_UNKNOWN, SOURCE_USER_ACTION, SOURCE_SCHEDULE, or SOURCE_CONTEXT"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 206
    return p0
.end method

.method private static blacklist getTrimmedString(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "input"    # Ljava/lang/String;

    .line 344
    if-eqz p0, :cond_10

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x3e8

    if-le v0, v1, :cond_10

    .line 345
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 347
    :cond_10
    return-object p0
.end method

.method private static blacklist getTrimmedUri(Landroid/net/Uri;)Landroid/net/Uri;
    .registers 3
    .param p0, "input"    # Landroid/net/Uri;

    .line 355
    if-eqz p0, :cond_1b

    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x3e8

    if-le v0, v1, :cond_1b

    .line 356
    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/service/notification/Condition;->getTrimmedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0

    .line 358
    :cond_1b
    return-object p0
.end method

.method public static whitelist isValidId(Landroid/net/Uri;Ljava/lang/String;)Z
    .registers 4
    .param p0, "id"    # Landroid/net/Uri;
    .param p1, "pkg"    # Ljava/lang/String;

    .line 324
    if-eqz p0, :cond_1a

    const-string v0, "condition"

    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-virtual {p0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    const/4 v0, 0x1

    goto :goto_1b

    :cond_1a
    const/4 v0, 0x0

    :goto_1b
    return v0
.end method

.method private static greylist-max-o isValidState(I)Z
    .registers 2
    .param p0, "state"    # I

    .line 199
    if-ltz p0, :cond_7

    const/4 v0, 0x3

    if-gt p0, v0, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method public static whitelist newId(Landroid/content/Context;)Landroid/net/Uri$Builder;
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .line 318
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    .line 319
    const-string v1, "condition"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 320
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 318
    return-object v0
.end method

.method public static whitelist relevanceToString(I)Ljava/lang/String;
    .registers 5
    .param p0, "flags"    # I

    .line 274
    and-int/lit8 v0, p0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_8

    move v0, v2

    goto :goto_9

    :cond_8
    move v0, v1

    .line 275
    .local v0, "now":Z
    :goto_9
    and-int/lit8 v3, p0, 0x2

    if-eqz v3, :cond_e

    move v1, v2

    .line 276
    .local v1, "always":Z
    :cond_e
    if-nez v0, :cond_15

    if-nez v1, :cond_15

    const-string v2, "NONE"

    return-object v2

    .line 277
    :cond_15
    if-eqz v0, :cond_1c

    if-eqz v1, :cond_1c

    const-string v2, "NOW, ALWAYS"

    return-object v2

    .line 278
    :cond_1c
    if-eqz v0, :cond_21

    const-string v2, "NOW"

    goto :goto_23

    :cond_21
    const-string v2, "ALWAYS"

    :goto_23
    return-object v2
.end method

.method public static blacklist sourceToString(I)Ljava/lang/String;
    .registers 4
    .param p0, "source"    # I

    .line 266
    if-nez p0, :cond_5

    const-string v0, "SOURCE_UNKNOWN"

    return-object v0

    .line 267
    :cond_5
    const/4 v0, 0x1

    if-ne p0, v0, :cond_b

    const-string v0, "SOURCE_USER_ACTION"

    return-object v0

    .line 268
    :cond_b
    const/4 v0, 0x2

    if-ne p0, v0, :cond_11

    const-string v0, "SOURCE_SCHEDULE"

    return-object v0

    .line 269
    :cond_11
    const/4 v0, 0x3

    if-ne p0, v0, :cond_17

    const-string v0, "SOURCE_CONTEXT"

    return-object v0

    .line 270
    :cond_17
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "source is invalid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static whitelist stateToString(I)Ljava/lang/String;
    .registers 4
    .param p0, "state"    # I

    .line 254
    if-nez p0, :cond_5

    const-string v0, "STATE_FALSE"

    return-object v0

    .line 255
    :cond_5
    const/4 v0, 0x1

    if-ne p0, v0, :cond_b

    const-string v0, "STATE_TRUE"

    return-object v0

    .line 256
    :cond_b
    const/4 v0, 0x2

    if-ne p0, v0, :cond_11

    const-string v0, "STATE_UNKNOWN"

    return-object v0

    .line 257
    :cond_11
    const/4 v0, 0x3

    if-ne p0, v0, :cond_17

    const-string v0, "STATE_ERROR"

    return-object v0

    .line 258
    :cond_17
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "state is invalid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public whitelist copy()Landroid/service/notification/Condition;
    .registers 3

    .line 307
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 309
    .local v0, "parcel":Landroid/os/Parcel;
    const/4 v1, 0x0

    :try_start_5
    invoke-virtual {p0, v0, v1}, Landroid/service/notification/Condition;->writeToParcel(Landroid/os/Parcel;I)V

    .line 310
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 311
    new-instance v1, Landroid/service/notification/Condition;

    invoke-direct {v1, v0}, Landroid/service/notification/Condition;-><init>(Landroid/os/Parcel;)V
    :try_end_10
    .catchall {:try_start_5 .. :try_end_10} :catchall_14

    .line 313
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 311
    return-object v1

    .line 313
    :catchall_14
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 314
    throw v1
.end method

.method public whitelist describeContents()I
    .registers 2

    .line 303
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V
    .registers 9
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "fieldId"    # J

    .line 238
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 241
    .local v0, "token":J
    iget-object v2, p0, Landroid/service/notification/Condition;->id:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    const-wide v3, 0x10900000001L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 242
    const-wide v2, 0x10900000002L

    iget-object v4, p0, Landroid/service/notification/Condition;->summary:Ljava/lang/String;

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 243
    const-wide v2, 0x10900000003L

    iget-object v4, p0, Landroid/service/notification/Condition;->line1:Ljava/lang/String;

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 244
    const-wide v2, 0x10900000004L

    iget-object v4, p0, Landroid/service/notification/Condition;->line2:Ljava/lang/String;

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 245
    const-wide v2, 0x10500000005L

    iget v4, p0, Landroid/service/notification/Condition;->icon:I

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 246
    const-wide v2, 0x10e00000006L

    iget v4, p0, Landroid/service/notification/Condition;->state:I

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 248
    const-wide v2, 0x10500000007L

    iget v4, p0, Landroid/service/notification/Condition;->flags:I

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 250
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 251
    return-void
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 283
    instance-of v0, p1, Landroid/service/notification/Condition;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 284
    :cond_6
    const/4 v0, 0x1

    if-ne p1, p0, :cond_a

    return v0

    .line 285
    :cond_a
    move-object v2, p1

    check-cast v2, Landroid/service/notification/Condition;

    .line 286
    .local v2, "other":Landroid/service/notification/Condition;
    iget-object v3, v2, Landroid/service/notification/Condition;->id:Landroid/net/Uri;

    iget-object v4, p0, Landroid/service/notification/Condition;->id:Landroid/net/Uri;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4f

    iget-object v3, v2, Landroid/service/notification/Condition;->summary:Ljava/lang/String;

    iget-object v4, p0, Landroid/service/notification/Condition;->summary:Ljava/lang/String;

    .line 287
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4f

    iget-object v3, v2, Landroid/service/notification/Condition;->line1:Ljava/lang/String;

    iget-object v4, p0, Landroid/service/notification/Condition;->line1:Ljava/lang/String;

    .line 288
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4f

    iget-object v3, v2, Landroid/service/notification/Condition;->line2:Ljava/lang/String;

    iget-object v4, p0, Landroid/service/notification/Condition;->line2:Ljava/lang/String;

    .line 289
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4f

    iget v3, v2, Landroid/service/notification/Condition;->icon:I

    iget v4, p0, Landroid/service/notification/Condition;->icon:I

    if-ne v3, v4, :cond_4f

    iget v3, v2, Landroid/service/notification/Condition;->state:I

    iget v4, p0, Landroid/service/notification/Condition;->state:I

    if-ne v3, v4, :cond_4f

    iget v3, v2, Landroid/service/notification/Condition;->flags:I

    iget v4, p0, Landroid/service/notification/Condition;->flags:I

    if-ne v3, v4, :cond_4f

    iget v3, v2, Landroid/service/notification/Condition;->source:I

    iget v4, p0, Landroid/service/notification/Condition;->source:I

    if-ne v3, v4, :cond_4f

    move v1, v0

    goto :goto_50

    :cond_4f
    nop

    .line 286
    :goto_50
    return v1
.end method

.method public whitelist test-api hashCode()I
    .registers 9

    .line 298
    iget-object v0, p0, Landroid/service/notification/Condition;->id:Landroid/net/Uri;

    iget-object v1, p0, Landroid/service/notification/Condition;->summary:Ljava/lang/String;

    iget-object v2, p0, Landroid/service/notification/Condition;->line1:Ljava/lang/String;

    iget-object v3, p0, Landroid/service/notification/Condition;->line2:Ljava/lang/String;

    iget v4, p0, Landroid/service/notification/Condition;->icon:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget v5, p0, Landroid/service/notification/Condition;->state:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget v6, p0, Landroid/service/notification/Condition;->source:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget v7, p0, Landroid/service/notification/Condition;->flags:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    filled-new-array/range {v0 .. v7}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 223
    new-instance v0, Ljava/lang/StringBuilder;

    const-class v1, Landroid/service/notification/Condition;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 224
    const-string/jumbo v1, "state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/service/notification/Condition;->state:I

    invoke-static {v1}, Landroid/service/notification/Condition;->stateToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 225
    const-string v1, ",id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/service/notification/Condition;->id:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 226
    const-string v1, ",summary="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/service/notification/Condition;->summary:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 227
    const-string v1, ",line1="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/service/notification/Condition;->line1:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 228
    const-string v1, ",line2="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/service/notification/Condition;->line2:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 229
    const-string v1, ",icon="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/service/notification/Condition;->icon:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 230
    const-string v1, ",source="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/service/notification/Condition;->source:I

    invoke-static {v1}, Landroid/service/notification/Condition;->sourceToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 231
    const-string v1, ",flags="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/service/notification/Condition;->flags:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 232
    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 223
    return-object v0
.end method

.method public blacklist validate()V
    .registers 2

    .line 195
    iget v0, p0, Landroid/service/notification/Condition;->source:I

    invoke-static {v0}, Landroid/service/notification/Condition;->checkValidSource(I)I

    .line 196
    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 211
    iget-object v0, p0, Landroid/service/notification/Condition;->id:Landroid/net/Uri;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 212
    iget-object v0, p0, Landroid/service/notification/Condition;->summary:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 213
    iget-object v0, p0, Landroid/service/notification/Condition;->line1:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 214
    iget-object v0, p0, Landroid/service/notification/Condition;->line2:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 215
    iget v0, p0, Landroid/service/notification/Condition;->icon:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 216
    iget v0, p0, Landroid/service/notification/Condition;->state:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 217
    iget v0, p0, Landroid/service/notification/Condition;->source:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 218
    iget v0, p0, Landroid/service/notification/Condition;->flags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 219
    return-void
.end method
