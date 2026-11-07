.class public final Landroid/provider/ContactsContract$CommonDataKinds$GroupMembership;
.super Ljava/lang/Object;
.source "ContactsContract.java"

# interfaces
.implements Landroid/provider/ContactsContract$DataColumnsWithJoins;
.implements Landroid/provider/ContactsContract$ContactCounts;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/ContactsContract$CommonDataKinds;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GroupMembership"
.end annotation


# static fields
.field public static final whitelist CONTENT_ITEM_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/group_membership"

.field public static final whitelist GROUP_ROW_ID:Ljava/lang/String; = "data1"

.field public static final whitelist GROUP_SOURCE_ID:Ljava/lang/String; = "group_sourceid"


# direct methods
.method private constructor greylist-max-o <init>()V
    .registers 1

    .line 8129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
