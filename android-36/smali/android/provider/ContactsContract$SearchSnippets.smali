.class public Landroid/provider/ContactsContract$SearchSnippets;
.super Ljava/lang/Object;
.source "ContactsContract.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/ContactsContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SearchSnippets"
.end annotation


# static fields
.field public static final whitelist DEFERRED_SNIPPETING_KEY:Ljava/lang/String; = "deferred_snippeting"

.field public static final whitelist SNIPPET:Ljava/lang/String; = "snippet"

.field public static final greylist-max-o SNIPPET_ARGS_PARAM_KEY:Ljava/lang/String; = "snippet_args"


# direct methods
.method public constructor whitelist <init>()V
    .registers 1

    .line 6382
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
