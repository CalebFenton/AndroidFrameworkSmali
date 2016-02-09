.class public Landroid/text/Editable$Factory;
.super Ljava/lang/Object;
.source "Editable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/text/Editable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Factory"
.end annotation


# static fields
.field private static sInstance:Landroid/text/Editable$Factory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 124
    new-instance v0, Landroid/text/Editable$Factory;

    #@2
    invoke-direct {v0}, Landroid/text/Editable$Factory;-><init>()V

    #@5
    sput-object v0, Landroid/text/Editable$Factory;->sInstance:Landroid/text/Editable$Factory;

    #@7
    .line 123
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static getInstance()Landroid/text/Editable$Factory;
    .locals 1

    #@0
    .prologue
    .line 130
    sget-object v0, Landroid/text/Editable$Factory;->sInstance:Landroid/text/Editable$Factory;

    #@2
    return-object v0
.end method


# virtual methods
.method public newEditable(Ljava/lang/CharSequence;)Landroid/text/Editable;
    .locals 1
    .param p1, "source"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    .line 139
    new-instance v0, Landroid/text/SpannableStringBuilder;

    #@2
    invoke-direct {v0, p1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    #@5
    return-object v0
.end method
