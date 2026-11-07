.class public Landroid/util/EventLogTags$Description;
.super Ljava/lang/Object;
.source "EventLogTags.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/util/EventLogTags;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Description"
.end annotation


# instance fields
.field public final whitelist mName:Ljava/lang/String;

.field public final whitelist mTag:I


# direct methods
.method constructor greylist-max-o <init>(ILjava/lang/String;)V
    .registers 3
    .param p1, "tag"    # I
    .param p2, "name"    # Ljava/lang/String;

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput p1, p0, Landroid/util/EventLogTags$Description;->mTag:I

    .line 34
    iput-object p2, p0, Landroid/util/EventLogTags$Description;->mName:Ljava/lang/String;

    .line 35
    return-void
.end method
