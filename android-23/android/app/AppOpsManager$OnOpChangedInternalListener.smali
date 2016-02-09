.class public Landroid/app/AppOpsManager$OnOpChangedInternalListener;
.super Ljava/lang/Object;
.source "AppOpsManager.java"

# interfaces
.implements Landroid/app/AppOpsManager$OnOpChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/AppOpsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OnOpChangedInternalListener"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 1196
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public onOpChanged(ILjava/lang/String;)V
    .locals 0
    .param p1, "op"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1198
    return-void
.end method

.method public onOpChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "op"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1197
    return-void
.end method
