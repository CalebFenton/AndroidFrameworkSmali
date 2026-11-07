.class public final Landroid/content/IntentFilter$AuthorityEntry;
.super Ljava/lang/Object;
.source "IntentFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/IntentFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AuthorityEntry"
.end annotation


# instance fields
.field private final greylist-max-o mHost:Ljava/lang/String;

.field private final greylist-max-o mOrigHost:Ljava/lang/String;

.field private final greylist-max-o mPort:I

.field private final greylist-max-o mWild:Z


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmHost(Landroid/content/IntentFilter$AuthorityEntry;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Landroid/content/IntentFilter$AuthorityEntry;->mHost:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPort(Landroid/content/IntentFilter$AuthorityEntry;)I
    .registers 1

    iget p0, p0, Landroid/content/IntentFilter$AuthorityEntry;->mPort:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmWild(Landroid/content/IntentFilter$AuthorityEntry;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/content/IntentFilter$AuthorityEntry;->mWild:Z

    return p0
.end method

.method constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "src"    # Landroid/os/Parcel;

    .line 1188
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1189
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/IntentFilter$AuthorityEntry;->mOrigHost:Ljava/lang/String;

    .line 1190
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/IntentFilter$AuthorityEntry;->mHost:Ljava/lang/String;

    .line 1191
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_17

    const/4 v0, 0x1

    goto :goto_18

    :cond_17
    const/4 v0, 0x0

    :goto_18
    iput-boolean v0, p0, Landroid/content/IntentFilter$AuthorityEntry;->mWild:Z

    .line 1192
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/IntentFilter$AuthorityEntry;->mPort:I

    .line 1193
    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # Ljava/lang/String;

    .line 1181
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1182
    iput-object p1, p0, Landroid/content/IntentFilter$AuthorityEntry;->mOrigHost:Ljava/lang/String;

    .line 1183
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-lez v0, :cond_16

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v3, 0x2a

    if-ne v0, v3, :cond_16

    move v2, v1

    :cond_16
    iput-boolean v2, p0, Landroid/content/IntentFilter$AuthorityEntry;->mWild:Z

    .line 1184
    iget-boolean v0, p0, Landroid/content/IntentFilter$AuthorityEntry;->mWild:Z

    if-eqz v0, :cond_25

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    goto :goto_26

    :cond_25
    move-object v0, p1

    :goto_26
    iput-object v0, p0, Landroid/content/IntentFilter$AuthorityEntry;->mHost:Ljava/lang/String;

    .line 1185
    if-eqz p2, :cond_2f

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_30

    :cond_2f
    const/4 v0, -0x1

    :goto_30
    iput v0, p0, Landroid/content/IntentFilter$AuthorityEntry;->mPort:I

    .line 1186
    return-void
.end method


# virtual methods
.method blacklist dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V
    .registers 9
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "fieldId"    # J

    .line 1203
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 1205
    .local v0, "token":J
    const-wide v2, 0x10900000001L

    iget-object v4, p0, Landroid/content/IntentFilter$AuthorityEntry;->mHost:Ljava/lang/String;

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 1206
    const-wide v2, 0x10800000002L

    iget-boolean v4, p0, Landroid/content/IntentFilter$AuthorityEntry;->mWild:Z

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 1207
    const-wide v2, 0x10500000003L

    iget v4, p0, Landroid/content/IntentFilter$AuthorityEntry;->mPort:I

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1208
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 1209
    return-void
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 4
    .param p1, "obj"    # Ljava/lang/Object;

    .line 1235
    instance-of v0, p1, Landroid/content/IntentFilter$AuthorityEntry;

    if-eqz v0, :cond_c

    .line 1236
    move-object v0, p1

    check-cast v0, Landroid/content/IntentFilter$AuthorityEntry;

    .line 1237
    .local v0, "other":Landroid/content/IntentFilter$AuthorityEntry;
    invoke-virtual {p0, v0}, Landroid/content/IntentFilter$AuthorityEntry;->match(Landroid/content/IntentFilter$AuthorityEntry;)Z

    move-result v1

    return v1

    .line 1239
    .end local v0    # "other":Landroid/content/IntentFilter$AuthorityEntry;
    :cond_c
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getHost()Ljava/lang/String;
    .registers 2

    .line 1212
    iget-object v0, p0, Landroid/content/IntentFilter$AuthorityEntry;->mOrigHost:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getPort()I
    .registers 2

    .line 1216
    iget v0, p0, Landroid/content/IntentFilter$AuthorityEntry;->mPort:I

    return v0
.end method

.method public whitelist match(Landroid/net/Uri;)I
    .registers 3
    .param p1, "data"    # Landroid/net/Uri;

    .line 1253
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/content/IntentFilter$AuthorityEntry;->match(Landroid/net/Uri;Z)I

    move-result v0

    return v0
.end method

.method public blacklist match(Landroid/net/Uri;Z)I
    .registers 8
    .param p1, "data"    # Landroid/net/Uri;
    .param p2, "wildcardSupported"    # Z

    .line 1264
    invoke-virtual {p1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v0

    .line 1265
    .local v0, "host":Ljava/lang/String;
    const/high16 v1, 0x300000

    const/4 v2, -0x2

    if-nez v0, :cond_19

    .line 1266
    if-eqz p2, :cond_18

    iget-boolean v3, p0, Landroid/content/IntentFilter$AuthorityEntry;->mWild:Z

    if-eqz v3, :cond_18

    iget-object v3, p0, Landroid/content/IntentFilter$AuthorityEntry;->mHost:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_18

    .line 1268
    return v1

    .line 1270
    :cond_18
    return v2

    .line 1275
    :cond_19
    if-eqz p2, :cond_23

    const-string v3, "*"

    invoke-virtual {v3, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4c

    .line 1276
    :cond_23
    iget-boolean v3, p0, Landroid/content/IntentFilter$AuthorityEntry;->mWild:Z

    if-eqz v3, :cond_43

    .line 1277
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    iget-object v4, p0, Landroid/content/IntentFilter$AuthorityEntry;->mHost:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v3, v4, :cond_34

    .line 1278
    return v2

    .line 1280
    :cond_34
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    iget-object v4, p0, Landroid/content/IntentFilter$AuthorityEntry;->mHost:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 1282
    :cond_43
    iget-object v3, p0, Landroid/content/IntentFilter$AuthorityEntry;->mHost:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_4c

    .line 1283
    return v2

    .line 1287
    :cond_4c
    if-nez p2, :cond_5e

    iget v3, p0, Landroid/content/IntentFilter$AuthorityEntry;->mPort:I

    if-ltz v3, :cond_5e

    .line 1288
    iget v1, p0, Landroid/content/IntentFilter$AuthorityEntry;->mPort:I

    invoke-virtual {p1}, Landroid/net/Uri;->getPort()I

    move-result v3

    if-eq v1, v3, :cond_5b

    .line 1289
    return v2

    .line 1291
    :cond_5b
    const/high16 v1, 0x400000

    return v1

    .line 1293
    :cond_5e
    return v1
.end method

.method public greylist-max-o match(Landroid/content/IntentFilter$AuthorityEntry;)Z
    .registers 5
    .param p1, "other"    # Landroid/content/IntentFilter$AuthorityEntry;

    .line 1221
    iget-boolean v0, p0, Landroid/content/IntentFilter$AuthorityEntry;->mWild:Z

    iget-boolean v1, p1, Landroid/content/IntentFilter$AuthorityEntry;->mWild:Z

    const/4 v2, 0x0

    if-eq v0, v1, :cond_8

    .line 1222
    return v2

    .line 1224
    :cond_8
    iget-object v0, p0, Landroid/content/IntentFilter$AuthorityEntry;->mHost:Ljava/lang/String;

    iget-object v1, p1, Landroid/content/IntentFilter$AuthorityEntry;->mHost:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    .line 1225
    return v2

    .line 1227
    :cond_13
    iget v0, p0, Landroid/content/IntentFilter$AuthorityEntry;->mPort:I

    iget v1, p1, Landroid/content/IntentFilter$AuthorityEntry;->mPort:I

    if-eq v0, v1, :cond_1a

    .line 1228
    return v2

    .line 1230
    :cond_1a
    const/4 v0, 0x1

    return v0
.end method

.method greylist-max-o writeToParcel(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "dest"    # Landroid/os/Parcel;

    .line 1196
    iget-object v0, p0, Landroid/content/IntentFilter$AuthorityEntry;->mOrigHost:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1197
    iget-object v0, p0, Landroid/content/IntentFilter$AuthorityEntry;->mHost:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1198
    iget-boolean v0, p0, Landroid/content/IntentFilter$AuthorityEntry;->mWild:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1199
    iget v0, p0, Landroid/content/IntentFilter$AuthorityEntry;->mPort:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1200
    return-void
.end method
