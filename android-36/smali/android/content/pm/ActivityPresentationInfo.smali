.class public final Landroid/content/pm/ActivityPresentationInfo;
.super Ljava/lang/Object;
.source "ActivityPresentationInfo.java"


# instance fields
.field public final blacklist componentName:Landroid/content/ComponentName;

.field public final blacklist displayId:I

.field public final blacklist taskId:I


# direct methods
.method public constructor blacklist <init>(IILandroid/content/ComponentName;)V
    .registers 4
    .param p1, "taskId"    # I
    .param p2, "displayId"    # I
    .param p3, "componentName"    # Landroid/content/ComponentName;

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput p1, p0, Landroid/content/pm/ActivityPresentationInfo;->taskId:I

    .line 36
    iput p2, p0, Landroid/content/pm/ActivityPresentationInfo;->displayId:I

    .line 37
    iput-object p3, p0, Landroid/content/pm/ActivityPresentationInfo;->componentName:Landroid/content/ComponentName;

    .line 38
    return-void
.end method
