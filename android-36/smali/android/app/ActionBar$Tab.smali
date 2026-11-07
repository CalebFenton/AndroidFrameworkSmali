.class public abstract Landroid/app/ActionBar$Tab;
.super Ljava/lang/Object;
.source "ActionBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ActionBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Tab"
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final whitelist INVALID_POSITION:I = -0x1


# direct methods
.method public constructor whitelist <init>()V
    .registers 1

    .line 1159
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract whitelist getContentDescription()Ljava/lang/CharSequence;
.end method

.method public abstract whitelist getCustomView()Landroid/view/View;
.end method

.method public abstract whitelist getIcon()Landroid/graphics/drawable/Drawable;
.end method

.method public abstract whitelist getPosition()I
.end method

.method public abstract whitelist getTag()Ljava/lang/Object;
.end method

.method public abstract whitelist getText()Ljava/lang/CharSequence;
.end method

.method public abstract whitelist select()V
.end method

.method public abstract whitelist setContentDescription(I)Landroid/app/ActionBar$Tab;
.end method

.method public abstract whitelist setContentDescription(Ljava/lang/CharSequence;)Landroid/app/ActionBar$Tab;
.end method

.method public abstract whitelist setCustomView(I)Landroid/app/ActionBar$Tab;
.end method

.method public abstract whitelist setCustomView(Landroid/view/View;)Landroid/app/ActionBar$Tab;
.end method

.method public abstract whitelist setIcon(I)Landroid/app/ActionBar$Tab;
.end method

.method public abstract whitelist setIcon(Landroid/graphics/drawable/Drawable;)Landroid/app/ActionBar$Tab;
.end method

.method public abstract whitelist setTabListener(Landroid/app/ActionBar$TabListener;)Landroid/app/ActionBar$Tab;
.end method

.method public abstract whitelist setTag(Ljava/lang/Object;)Landroid/app/ActionBar$Tab;
.end method

.method public abstract whitelist setText(I)Landroid/app/ActionBar$Tab;
.end method

.method public abstract whitelist setText(Ljava/lang/CharSequence;)Landroid/app/ActionBar$Tab;
.end method
