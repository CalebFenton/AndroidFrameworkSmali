.class public final Landroid/provider/ContactsContract$CommonDataKinds$Identity;
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
    name = "Identity"
.end annotation


# static fields
.field public static final whitelist CONTENT_ITEM_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/identity"

.field public static final whitelist IDENTITY:Ljava/lang/String; = "data1"

.field public static final whitelist NAMESPACE:Ljava/lang/String; = "data2"


# direct methods
.method private constructor greylist-max-o <init>()V
    .registers 1

    .line 8332
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
