.class final Landroid/preference/SeekBarVolumizer$Observer;
.super Landroid/database/ContentObserver;
.source "SeekBarVolumizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/preference/SeekBarVolumizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Observer"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/preference/SeekBarVolumizer;


# direct methods
.method public constructor <init>(Landroid/preference/SeekBarVolumizer;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Landroid/preference/SeekBarVolumizer;
    .param p2, "handler"    # Landroid/os/Handler;

    #@0
    .prologue
    .line 365
    iput-object p1, p0, Landroid/preference/SeekBarVolumizer$Observer;->this$0:Landroid/preference/SeekBarVolumizer;

    #@2
    .line 366
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    #@5
    .line 365
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .param p1, "selfChange"    # Z

    #@0
    .prologue
    .line 371
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    #@3
    .line 372
    iget-object v0, p0, Landroid/preference/SeekBarVolumizer$Observer;->this$0:Landroid/preference/SeekBarVolumizer;

    #@5
    invoke-static {v0}, Landroid/preference/SeekBarVolumizer;->-wrap2(Landroid/preference/SeekBarVolumizer;)V

    #@8
    .line 370
    return-void
.end method
