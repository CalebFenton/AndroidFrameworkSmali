.class public Landroid/provider/ContactsContract$StatusUpdates;
.super Ljava/lang/Object;
.source "ContactsContract.java"

# interfaces
.implements Landroid/provider/ContactsContract$StatusColumns;
.implements Landroid/provider/ContactsContract$PresenceColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/ContactsContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StatusUpdates"
.end annotation


# static fields
.field public static final CONTENT_ITEM_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/status-update"

.field public static final CONTENT_TYPE:Ljava/lang/String; = "vnd.android.cursor.dir/status-update"

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final PROFILE_CONTENT_URI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    .line 5320
    sget-object v0, Landroid/provider/ContactsContract;->AUTHORITY_URI:Landroid/net/Uri;

    #@2
    const-string/jumbo v1, "status_updates"

    #@5
    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    #@8
    move-result-object v0

    #@9
    sput-object v0, Landroid/provider/ContactsContract$StatusUpdates;->CONTENT_URI:Landroid/net/Uri;

    #@b
    .line 5326
    sget-object v0, Landroid/provider/ContactsContract$Profile;->CONTENT_URI:Landroid/net/Uri;

    #@d
    const-string/jumbo v1, "status_updates"

    #@10
    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    #@13
    move-result-object v0

    #@14
    .line 5325
    sput-object v0, Landroid/provider/ContactsContract$StatusUpdates;->PROFILE_CONTENT_URI:Landroid/net/Uri;

    #@16
    .line 5310
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 5315
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method synthetic constructor <init>(Landroid/provider/ContactsContract$StatusUpdates;)V
    .locals 0

    #@0
    .prologue
    invoke-direct {p0}, Landroid/provider/ContactsContract$StatusUpdates;-><init>()V

    #@3
    return-void
.end method

.method public static final getPresenceIconResourceId(I)I
    .locals 1
    .param p0, "status"    # I

    #@0
    .prologue
    .line 5335
    packed-switch p0, :pswitch_data_0

    #@3
    .line 5347
    const v0, 0x108006a

    #@6
    return v0

    #@7
    .line 5337
    :pswitch_0
    const v0, 0x108006b

    #@a
    return v0

    #@b
    .line 5340
    :pswitch_1
    const v0, 0x1080067

    #@e
    return v0

    #@f
    .line 5342
    :pswitch_2
    const v0, 0x1080068

    #@12
    return v0

    #@13
    .line 5344
    :pswitch_3
    const v0, 0x1080069

    #@16
    return v0

    #@17
    .line 5335
    nop

    #@18
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public static final getPresencePrecedence(I)I
    .locals 0
    .param p0, "status"    # I

    #@0
    .prologue
    .line 5360
    return p0
.end method
